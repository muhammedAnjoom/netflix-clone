part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required List<Downloads> videosList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;
  factory FastLaughState.initial() => const FastLaughState(
        videosList: [],
        isError: false,
        isLoading: true,
      );
}
