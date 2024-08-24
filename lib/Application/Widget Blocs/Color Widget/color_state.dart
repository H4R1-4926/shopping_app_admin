part of 'color_bloc.dart';

@freezed
class ColorState with _$ColorState {
  const factory ColorState({required List<Color> colors}) = _ColorState;
  factory ColorState.initial() {
    return const ColorState(colors: []);
  }
}
