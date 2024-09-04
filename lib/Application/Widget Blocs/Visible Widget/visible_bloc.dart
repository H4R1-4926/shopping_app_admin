import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'visible_event.dart';
part 'visible_state.dart';
part 'visible_bloc.freezed.dart';

class VisibleBloc extends Bloc<VisibleEvent, VisibleState> {
  VisibleBloc() : super(VisibleState.initial()) {
    on<OnChanged>((event, emit) {
      if (event.category == 'Cloths') {
        emit(VisibleState(isTrue: true, texts: state.texts));
      } else {
        emit(VisibleState(isTrue: false, texts: state.texts));
      }
    });
    on<OnAdded>((event, emit) {
      final text = List<String>.from(state.texts)..add(event.text);
      log(text.toString());
      emit(VisibleState(isTrue: state.isTrue, texts: text));
    });
    on<OnSave>((event, emit) {
      emit(state.copyWith(texts: []));
    });
  }
}
