// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ColorEvent {
  Color get colors => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Color colors) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Color colors)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Color colors)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Add value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ColorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColorEventCopyWith<ColorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorEventCopyWith<$Res> {
  factory $ColorEventCopyWith(
          ColorEvent value, $Res Function(ColorEvent) then) =
      _$ColorEventCopyWithImpl<$Res, ColorEvent>;
  @useResult
  $Res call({Color colors});
}

/// @nodoc
class _$ColorEventCopyWithImpl<$Res, $Val extends ColorEvent>
    implements $ColorEventCopyWith<$Res> {
  _$ColorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = null,
  }) {
    return _then(_value.copyWith(
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> implements $ColorEventCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color colors});
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$ColorEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = null,
  }) {
    return _then(_$AddImpl(
      null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$AddImpl implements Add {
  const _$AddImpl(this.colors);

  @override
  final Color colors;

  @override
  String toString() {
    return 'ColorEvent.add(colors: $colors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.colors, colors) || other.colors == colors));
  }

  @override
  int get hashCode => Object.hash(runtimeType, colors);

  /// Create a copy of ColorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Color colors) add,
  }) {
    return add(colors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Color colors)? add,
  }) {
    return add?.call(colors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Color colors)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(colors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Add value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class Add implements ColorEvent {
  const factory Add(final Color colors) = _$AddImpl;

  @override
  Color get colors;

  /// Create a copy of ColorEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ColorState {
  List<Color> get colors => throw _privateConstructorUsedError;

  /// Create a copy of ColorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColorStateCopyWith<ColorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorStateCopyWith<$Res> {
  factory $ColorStateCopyWith(
          ColorState value, $Res Function(ColorState) then) =
      _$ColorStateCopyWithImpl<$Res, ColorState>;
  @useResult
  $Res call({List<Color> colors});
}

/// @nodoc
class _$ColorStateCopyWithImpl<$Res, $Val extends ColorState>
    implements $ColorStateCopyWith<$Res> {
  _$ColorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = null,
  }) {
    return _then(_value.copyWith(
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<Color>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorStateImplCopyWith<$Res>
    implements $ColorStateCopyWith<$Res> {
  factory _$$ColorStateImplCopyWith(
          _$ColorStateImpl value, $Res Function(_$ColorStateImpl) then) =
      __$$ColorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Color> colors});
}

/// @nodoc
class __$$ColorStateImplCopyWithImpl<$Res>
    extends _$ColorStateCopyWithImpl<$Res, _$ColorStateImpl>
    implements _$$ColorStateImplCopyWith<$Res> {
  __$$ColorStateImplCopyWithImpl(
      _$ColorStateImpl _value, $Res Function(_$ColorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = null,
  }) {
    return _then(_$ColorStateImpl(
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<Color>,
    ));
  }
}

/// @nodoc

class _$ColorStateImpl implements _ColorState {
  const _$ColorStateImpl({required final List<Color> colors})
      : _colors = colors;

  final List<Color> _colors;
  @override
  List<Color> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  String toString() {
    return 'ColorState(colors: $colors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorStateImpl &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_colors));

  /// Create a copy of ColorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorStateImplCopyWith<_$ColorStateImpl> get copyWith =>
      __$$ColorStateImplCopyWithImpl<_$ColorStateImpl>(this, _$identity);
}

abstract class _ColorState implements ColorState {
  const factory _ColorState({required final List<Color> colors}) =
      _$ColorStateImpl;

  @override
  List<Color> get colors;

  /// Create a copy of ColorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorStateImplCopyWith<_$ColorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
