import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app_admin/Core/lists.dart';

part 'color_event.dart';
part 'color_state.dart';
part 'color_bloc.freezed.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorState.initial()) {
    on<Add>((event, emit) {
      kDemoColorList.add(event.colors);
      emit(ColorState(colors: kDemoColorList));
    });
  }
}
