import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/downloads/i_downloads_repos.dart';

import '../../domain/downloads/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final _videoUrls = [
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4"
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(IDownloadsRepo _downlodsService,)
      : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      emit(
          // sending loading to ui
        const FastLaughState(
        videosList: [],
        isLoading: true,
        isError: false,
      ));
      // get trending movies
      final _result = await _downlodsService.getDownloadsImage();
      // log(_result.toString());
      final respon = _result.fold((l) => const FastLaughState(
        videosList: [],
        isError: true,
        isLoading: false
      ), (r) => FastLaughState(
        videosList: r,
        isLoading: false,
        isError: false
      ));
      // send to ui
      emit(respon);
    });
  }
}
