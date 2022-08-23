import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/new_and_hot/hot_and_new_service.dart';
import 'package:netflix_clone/domain/new_and_hot/model/discover.dart';

import '../../domain/core/failures/main_failure.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotAndNewService _hotAndNewService;
  HotAndNewBloc(this._hotAndNewService) : super(HotAndNewState.initial()) {
    // get hot and new movie data
    on<LoadDataInComingSoon>((event, emit) async {
      // send loading to ui
      emit(const HotAndNewState(
          comingSoonList: [],
          everyOneIsWatchingList: [],
          isLoading: true,
          hasError: false));
      // get data from remote
      final _result = await _hotAndNewService.getHotAndNewMovieData();
      // data in state
      final newState = _result.fold((MainFailure f) {
        return const HotAndNewState(
            comingSoonList: [],
            everyOneIsWatchingList: [],
            isLoading: false,
            hasError: true);
      }, (HotAndNewDataResp resp) {
        return HotAndNewState(
            comingSoonList: resp.results,
            everyOneIsWatchingList: state.everyOneIsWatchingList,
            isLoading: false,
            hasError: false);
      });
      emit(newState);
    });
    // get hot and new tv data
    on<LoadDataInEveryOnesWatching>((event, emit) {});
  }
}
