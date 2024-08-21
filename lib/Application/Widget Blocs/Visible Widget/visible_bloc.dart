import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'visible_event.dart';
part 'visible_state.dart';
part 'visible_bloc.freezed.dart';

class VisibleBloc extends Bloc<VisibleEvent, VisibleState> {
  VisibleBloc() : super(VisibleState.initial()) {
    on<OnChanged>((event, emit) {
      if (event.value.isNotEmpty) {
        emit(const VisibleState(isVisible: true));
      } else {
        log('Error');
      }
    });
  }
}
