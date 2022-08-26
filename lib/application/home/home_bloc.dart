import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/new_and_hot/hot_and_new_service.dart';

import '../../domain/new_and_hot/model/discover.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final  HotAndNewService _homeService;
  HomeBloc(this._homeService) : super(HomeState.initial()) {
    // get home screendata
    on<GetHomeScreenData>((event, emit) async {
      // set loading to ui
      emit(state.copyWith(isLoading: true, hasError: false));
    //   // get datat
      final _movieResult = await _homeService.getHotAndNewMovieData();
      final _tvResutl = await _homeService.getHotAndNewTvData();

    //   //transform data
      final stateOne =  _movieResult.fold((MainFailure failures) {
        return  HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          pastYearMovieList: [],
          trendingMovieList: [],
          tenseDramaMovieList: [],
          southIndianMovieList: [],
          trendingTvList: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotAndNewDataResp resp) {
        final pastYear = resp.results;
        pastYear.shuffle();
        final trending = resp.results;
        trending.shuffle();
        final tenseDarama = resp.results;
        tenseDarama.shuffle();
        final southIndia = resp.results;
        southIndia.shuffle();
        return  HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          pastYearMovieList: pastYear,
          trendingMovieList: trending,
          tenseDramaMovieList: tenseDarama,
          southIndianMovieList: southIndia,
          trendingTvList: state.trendingMovieList,
          isLoading: false,
          hasError: false,
        );
      });
      emit(stateOne);
     final stateTwo = _tvResutl.fold((MainFailure failure) {
        return  HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          pastYearMovieList: [],
          trendingMovieList: [],
          tenseDramaMovieList: [],
          southIndianMovieList: [],
          trendingTvList: [],
          isLoading: false,
          hasError: true,
        );
      } , (HotAndNewDataResp resp) {
        final topTenList = resp.results;
         return  HomeState(
           stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          pastYearMovieList: state.pastYearMovieList,
          trendingMovieList: state.trendingMovieList,
          tenseDramaMovieList: state.tenseDramaMovieList,
          southIndianMovieList: state.southIndianMovieList,
          trendingTvList: topTenList,
          isLoading: false,
          hasError: false,
        );
      });
      emit(stateTwo);
    });
  }
}
