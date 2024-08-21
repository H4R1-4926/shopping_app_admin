import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'visible_event.dart';
part 'visible_state.dart';
part 'visible_bloc.freezed.dart';

class VisibleBloc extends Bloc<VisibleEvent, VisibleState> {
  VisibleBloc() : super(_Initial()) {
    on<VisibleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
