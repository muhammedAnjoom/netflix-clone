part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState{
   factory DownloadsState({
    required bool isLoading,
     required List<Downloads> downloads,
     required Option<Either<MainFailure,List<Downloads>>> downloadsFailureSucessOption,
  }) = _DownloadsState;

  factory DownloadsState.inital(){
    return  DownloadsState(
      isLoading: false,
      downloadsFailureSucessOption: None(),
      downloads: []
    );
  }
}
