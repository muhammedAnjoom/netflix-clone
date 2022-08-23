import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/downloads/i_downloads_repos.dart';
import 'package:netflix_clone/domain/search/search_service.dart';

import '../../domain/downloads/models/downloads.dart';
import '../../domain/search/model/search_resp/search_resp.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsService;
  final SearchService _searchService;
  SearchBloc(this._searchService, this._downloadsService)
      : super(SearchState.initial()) {
    // idel state
    on<Initalize>((event, emit) async {
      if (state.ideleList.isNotEmpty) {
        emit(SearchState(
          searchResultList: [],
          ideleList: state.ideleList,
          isLoading: false,
          isError: false,
        ));
        return;
      }
      emit(
        const SearchState(
          searchResultList: [],
          ideleList: [],
          isLoading: true,
          isError: false,
        ),
      );
      // get trending
      final _result = await _downloadsService.getDownloadsImage();
      final _state = _result.fold((MainFailure f) {
        return const SearchState(
          searchResultList: [],
          ideleList: [],
          isLoading: false,
          isError: true,
        );
      }, (List<Downloads> list) {
        return SearchState(
          searchResultList: [],
          ideleList: list,
          isLoading: false,
          isError: false,
        );
      });
      emit(_state);
      // show to ui
    });
    // serch result state
    on<SerachMovie>((event, emit) async {
      // call search movie api
      emit(
        const SearchState(
          searchResultList: [],
          ideleList: [],
          isLoading: true,
          isError: false,
        ),
      );
      final _result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);
      final _state = _result.fold((MainFailure f) {
        return const SearchState(
          searchResultList: [],
          ideleList: [],
          isLoading: false,
          isError: true,
        );
      }, (SearchResp r) {
        return SearchState(
          searchResultList: r.results,
          ideleList: [],
          isLoading: false,
          isError: false,
        );
      });
      // show to ui
      emit(_state);
    });
  }
}
