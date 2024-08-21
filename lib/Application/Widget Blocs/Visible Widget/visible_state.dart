part of 'visible_bloc.dart';

@freezed
class VisibleState with _$VisibleState {
  const factory VisibleState({required bool isVisible}) = _VisibleState;
  factory VisibleState.initial() {
    return const VisibleState(isVisible: false);
  }
}
