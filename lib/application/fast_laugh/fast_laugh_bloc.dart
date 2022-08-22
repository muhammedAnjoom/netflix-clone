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

final dummyVideoUrls = [
  "https://pagalstatus.com/wp-content/uploads/2021/10/Game-Of-Thrones-Dragon-Scene-Status-Video.mp4",
  "https://statuspaji.com/wp-content/uploads/2021/09/Iron-Man-Full-Screen-Status-Video.mp4",
  "https://statusguide.com/anykreeg/2021/04/Naruto-vs-pain-amv-whatsapp-status.mp4",
  "https://gostatusguru.com/siteuploads/files/sfd25/12133/Stranger%20Things%20Whatsapp%20Status(GoStatusGuru.Com).mp4",
  "https://statusour.com/wp-content/uploads/2021/09/Money-Heist-Whatsapp-Status-Video-Download-Full-Screen-4k-Status-9.mp4"
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
