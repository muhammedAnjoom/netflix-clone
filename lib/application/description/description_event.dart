part of 'description_bloc.dart';

@freezed
class DescriptionEvent with _$DescriptionEvent {
  const factory DescriptionEvent.loadDataMovie({required int id}) =
      LoadDataMovie;
}
