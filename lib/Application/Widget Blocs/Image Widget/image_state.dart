part of 'image_bloc.dart';

@freezed
class ImageState with _$ImageState {
  const factory ImageState({required List<XFile>? mediaFileList}) = _ImageState;
  factory ImageState.initial() {
    return const ImageState(mediaFileList: []);
  }
}
