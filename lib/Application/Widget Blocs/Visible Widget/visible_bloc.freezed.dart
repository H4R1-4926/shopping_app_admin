// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visible_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VisibleEvent {
  String get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? onChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnChanged value) onChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnChanged value)? onChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnChanged value)? onChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of VisibleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisibleEventCopyWith<VisibleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisibleEventCopyWith<$Res> {
  factory $VisibleEventCopyWith(
          VisibleEvent value, $Res Function(VisibleEvent) then) =
      _$VisibleEventCopyWithImpl<$Res, VisibleEvent>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$VisibleEventCopyWithImpl<$Res, $Val extends VisibleEvent>
    implements $VisibleEventCopyWith<$Res> {
  _$VisibleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisibleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnChangedImplCopyWith<$Res>
    implements $VisibleEventCopyWith<$Res> {
  factory _$$OnChangedImplCopyWith(
          _$OnChangedImpl value, $Res Function(_$OnChangedImpl) then) =
      __$$OnChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$OnChangedImplCopyWithImpl<$Res>
    extends _$VisibleEventCopyWithImpl<$Res, _$OnChangedImpl>
    implements _$$OnChangedImplCopyWith<$Res> {
  __$$OnChangedImplCopyWithImpl(
      _$OnChangedImpl _value, $Res Function(_$OnChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnChangedImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnChangedImpl implements OnChanged {
  const _$OnChangedImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'VisibleEvent.onChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of VisibleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangedImplCopyWith<_$OnChangedImpl> get copyWith =>
      __$$OnChangedImplCopyWithImpl<_$OnChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onChanged,
  }) {
    return onChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? onChanged,
  }) {
    return onChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onChanged,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnChanged value) onChanged,
  }) {
    return onChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnChanged value)? onChanged,
  }) {
    return onChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnChanged value)? onChanged,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(this);
    }
    return orElse();
  }
}

abstract class OnChanged implements VisibleEvent {
  const factory OnChanged({required final String value}) = _$OnChangedImpl;

  @override
  String get value;

  /// Create a copy of VisibleEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnChangedImplCopyWith<_$OnChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VisibleState {
  bool get isVisible => throw _privateConstructorUsedError;

  /// Create a copy of VisibleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisibleStateCopyWith<VisibleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisibleStateCopyWith<$Res> {
  factory $VisibleStateCopyWith(
          VisibleState value, $Res Function(VisibleState) then) =
      _$VisibleStateCopyWithImpl<$Res, VisibleState>;
  @useResult
  $Res call({bool isVisible});
}

/// @nodoc
class _$VisibleStateCopyWithImpl<$Res, $Val extends VisibleState>
    implements $VisibleStateCopyWith<$Res> {
  _$VisibleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisibleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = null,
  }) {
    return _then(_value.copyWith(
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VisibleStateImplCopyWith<$Res>
    implements $VisibleStateCopyWith<$Res> {
  factory _$$VisibleStateImplCopyWith(
          _$VisibleStateImpl value, $Res Function(_$VisibleStateImpl) then) =
      __$$VisibleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isVisible});
}

/// @nodoc
class __$$VisibleStateImplCopyWithImpl<$Res>
    extends _$VisibleStateCopyWithImpl<$Res, _$VisibleStateImpl>
    implements _$$VisibleStateImplCopyWith<$Res> {
  __$$VisibleStateImplCopyWithImpl(
      _$VisibleStateImpl _value, $Res Function(_$VisibleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = null,
  }) {
    return _then(_$VisibleStateImpl(
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VisibleStateImpl implements _VisibleState {
  const _$VisibleStateImpl({required this.isVisible});

  @override
  final bool isVisible;

  @override
  String toString() {
    return 'VisibleState(isVisible: $isVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibleStateImpl &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVisible);

  /// Create a copy of VisibleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibleStateImplCopyWith<_$VisibleStateImpl> get copyWith =>
      __$$VisibleStateImplCopyWithImpl<_$VisibleStateImpl>(this, _$identity);
}

abstract class _VisibleState implements VisibleState {
  const factory _VisibleState({required final bool isVisible}) =
      _$VisibleStateImpl;

  @override
  bool get isVisible;

  /// Create a copy of VisibleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibleStateImplCopyWith<_$VisibleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
