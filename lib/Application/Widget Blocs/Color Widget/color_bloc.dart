import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_event.dart';
part 'color_state.dart';
part 'color_bloc.freezed.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorState.initial()) {
    on<Add>((event, emit) {
      final colorList = List<Color>.from(state.colors)..add(event.colors);
      // kDemoColorList.add(event.colors);
      emit(ColorState(colors: colorList));
    });
  }
}
