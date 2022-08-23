part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughEvent with _$FastLaughEvent {
  const factory FastLaughEvent.initialize() = Initialize;
  const factory FastLaughEvent.likeVideo({required int id}) = LikeVideo;
  const factory FastLaughEvent.unlikeVideo({required int id}) = UnlikeVideo;
}
