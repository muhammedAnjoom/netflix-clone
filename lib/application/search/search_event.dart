part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initalize() = Initalize;
  const factory SearchEvent.searchMovie({
    required String movieQuery, 
  }) = SerachMovie;

}