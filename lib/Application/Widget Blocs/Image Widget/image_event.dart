part of 'image_bloc.dart';

@freezed
class ImageEvent with _$ImageEvent {
  const factory ImageEvent.pick({required List<XFile>? pickedImage}) = Pick;
}
