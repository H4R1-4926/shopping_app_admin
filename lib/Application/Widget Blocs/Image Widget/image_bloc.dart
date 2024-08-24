import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_event.dart';
part 'image_state.dart';
part 'image_bloc.freezed.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  ImageBloc() : super(_Initial()) {
    on<ImageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
