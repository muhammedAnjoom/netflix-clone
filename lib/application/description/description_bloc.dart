import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/description/description_service.dart';
import 'package:netflix_clone/domain/description/model/description_resp/description_resp.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/new_and_hot/model/discover.dart';

part 'description_event.dart';
part 'description_state.dart';
part 'description_bloc.freezed.dart';

@injectable
class DescriptionBloc extends Bloc<DescriptionEvent, DescriptionState> {
  final DescriptionService _descriptionService;
  DescriptionBloc(this._descriptionService)
      : super(DescriptionState.initial()) {
    on<LoadDataMovie>((event, emit) async {
      emit(
         const DescriptionState(
          title: "",
          posterPath: "",
          overview: "",
          status: "",
          relaseDate: "",
          voteAverage: 0,
          isLoading: true,
          isError: false,
        ),
      );
      final movies =
          await _descriptionService.getMovieDescription(id: event.id);
      final result = movies.fold(
        (l) => const DescriptionState(
          title: "",
          posterPath: "",
          overview: "",
          status: "",
          relaseDate: "",
          voteAverage: 0,
          isLoading: true,
          isError: false,
        ),
        (r) => DescriptionState(
          title: r.title!,
          posterPath: r.posterPath!,
          overview: r.overview!,
          status: r.status!,
          relaseDate: r.releaseDate!,
          voteAverage: r.voteAverage!,
          isLoading: false,
          isError: false,
        ),
      );
      emit(result);
    });
  }
}
