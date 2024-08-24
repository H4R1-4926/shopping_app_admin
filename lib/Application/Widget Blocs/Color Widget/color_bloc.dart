import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_event.dart';
part 'color_state.dart';
part 'color_bloc.freezed.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(_Initial()) {
    on<ColorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
