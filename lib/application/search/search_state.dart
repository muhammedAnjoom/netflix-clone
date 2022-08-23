part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState(
      {required List<SearchResultData> searchResultList,
      required List<Downloads> ideleList,
      required bool isLoading,
      required bool isError}) = _SearchState;

  factory SearchState.initial() => const SearchState(
        searchResultList: [],
        ideleList: [],
        isLoading: false,
        isError: false,
      );
}
