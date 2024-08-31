part of 'visible_bloc.dart';

@freezed
class VisibleEvent with _$VisibleEvent {
  const factory VisibleEvent.onChanged({required String category}) = OnChanged;
  const factory VisibleEvent.onAdded({required List<String> text}) = OnAdded;
}
