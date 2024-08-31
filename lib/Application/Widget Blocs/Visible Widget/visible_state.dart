part of 'visible_bloc.dart';

@freezed
class VisibleState with _$VisibleState {
  const factory VisibleState(
      {required bool isTrue, required List<String> texts}) = _VisibleState;
  factory VisibleState.initial() {
    return const VisibleState(isTrue: false, texts: []);
  }
}
