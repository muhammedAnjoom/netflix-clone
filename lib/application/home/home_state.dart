part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {
        required String stateId,
        required List<HotAndNewData> pastYearMovieList,
      required List<HotAndNewData> trendingMovieList,
      required List<HotAndNewData> tenseDramaMovieList,
      required List<HotAndNewData> southIndianMovieList,
      required List<HotAndNewData> trendingTvList,
      required bool isLoading,
      required bool hasError}) = _Initial;
  factory HomeState.initial() => const HomeState(
        stateId: '0',
        pastYearMovieList: [],
        trendingMovieList: [],
        tenseDramaMovieList: [],
        southIndianMovieList: [],
        trendingTvList: [],
        isLoading: false,
        hasError: false,
      );
}
