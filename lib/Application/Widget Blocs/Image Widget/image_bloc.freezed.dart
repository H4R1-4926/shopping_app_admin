// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageEvent {
  List<XFile>? get pickedImage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<XFile>? pickedImage) pick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<XFile>? pickedImage)? pick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<XFile>? pickedImage)? pick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pick value) pick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Pick value)? pick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pick value)? pick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageEventCopyWith<ImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEventCopyWith<$Res> {
  factory $ImageEventCopyWith(
          ImageEvent value, $Res Function(ImageEvent) then) =
      _$ImageEventCopyWithImpl<$Res, ImageEvent>;
  @useResult
  $Res call({List<XFile>? pickedImage});
}

/// @nodoc
class _$ImageEventCopyWithImpl<$Res, $Val extends ImageEvent>
    implements $ImageEventCopyWith<$Res> {
  _$ImageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedImage = freezed,
  }) {
    return _then(_value.copyWith(
      pickedImage: freezed == pickedImage
          ? _value.pickedImage
          : pickedImage // ignore: cast_nullable_to_non_nullable
              as List<XFile>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PickImplCopyWith<$Res> implements $ImageEventCopyWith<$Res> {
  factory _$$PickImplCopyWith(
          _$PickImpl value, $Res Function(_$PickImpl) then) =
      __$$PickImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<XFile>? pickedImage});
}

/// @nodoc
class __$$PickImplCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$PickImpl>
    implements _$$PickImplCopyWith<$Res> {
  __$$PickImplCopyWithImpl(_$PickImpl _value, $Res Function(_$PickImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedImage = freezed,
  }) {
    return _then(_$PickImpl(
      pickedImage: freezed == pickedImage
          ? _value._pickedImage
          : pickedImage // ignore: cast_nullable_to_non_nullable
              as List<XFile>?,
    ));
  }
}

/// @nodoc

class _$PickImpl implements Pick {
  const _$PickImpl({required final List<XFile>? pickedImage})
      : _pickedImage = pickedImage;

  final List<XFile>? _pickedImage;
  @override
  List<XFile>? get pickedImage {
    final value = _pickedImage;
    if (value == null) return null;
    if (_pickedImage is EqualUnmodifiableListView) return _pickedImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImageEvent.pick(pickedImage: $pickedImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImpl &&
            const DeepCollectionEquality()
                .equals(other._pickedImage, _pickedImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pickedImage));

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImplCopyWith<_$PickImpl> get copyWith =>
      __$$PickImplCopyWithImpl<_$PickImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<XFile>? pickedImage) pick,
  }) {
    return pick(pickedImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<XFile>? pickedImage)? pick,
  }) {
    return pick?.call(pickedImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<XFile>? pickedImage)? pick,
    required TResult orElse(),
  }) {
    if (pick != null) {
      return pick(pickedImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pick value) pick,
  }) {
    return pick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Pick value)? pick,
  }) {
    return pick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pick value)? pick,
    required TResult orElse(),
  }) {
    if (pick != null) {
      return pick(this);
    }
    return orElse();
  }
}

abstract class Pick implements ImageEvent {
  const factory Pick({required final List<XFile>? pickedImage}) = _$PickImpl;

  @override
  List<XFile>? get pickedImage;

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickImplCopyWith<_$PickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageState {
  List<XFile>? get mediaFileList => throw _privateConstructorUsedError;

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageStateCopyWith<ImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res, ImageState>;
  @useResult
  $Res call({List<XFile>? mediaFileList});
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res, $Val extends ImageState>
    implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaFileList = freezed,
  }) {
    return _then(_value.copyWith(
      mediaFileList: freezed == mediaFileList
          ? _value.mediaFileList
          : mediaFileList // ignore: cast_nullable_to_non_nullable
              as List<XFile>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageStateImplCopyWith<$Res>
    implements $ImageStateCopyWith<$Res> {
  factory _$$ImageStateImplCopyWith(
          _$ImageStateImpl value, $Res Function(_$ImageStateImpl) then) =
      __$$ImageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<XFile>? mediaFileList});
}

/// @nodoc
class __$$ImageStateImplCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ImageStateImpl>
    implements _$$ImageStateImplCopyWith<$Res> {
  __$$ImageStateImplCopyWithImpl(
      _$ImageStateImpl _value, $Res Function(_$ImageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaFileList = freezed,
  }) {
    return _then(_$ImageStateImpl(
      mediaFileList: freezed == mediaFileList
          ? _value._mediaFileList
          : mediaFileList // ignore: cast_nullable_to_non_nullable
              as List<XFile>?,
    ));
  }
}

/// @nodoc

class _$ImageStateImpl implements _ImageState {
  const _$ImageStateImpl({required final List<XFile>? mediaFileList})
      : _mediaFileList = mediaFileList;

  final List<XFile>? _mediaFileList;
  @override
  List<XFile>? get mediaFileList {
    final value = _mediaFileList;
    if (value == null) return null;
    if (_mediaFileList is EqualUnmodifiableListView) return _mediaFileList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImageState(mediaFileList: $mediaFileList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._mediaFileList, _mediaFileList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_mediaFileList));

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageStateImplCopyWith<_$ImageStateImpl> get copyWith =>
      __$$ImageStateImplCopyWithImpl<_$ImageStateImpl>(this, _$identity);
}

abstract class _ImageState implements ImageState {
  const factory _ImageState({required final List<XFile>? mediaFileList}) =
      _$ImageStateImpl;

  @override
  List<XFile>? get mediaFileList;

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageStateImplCopyWith<_$ImageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
