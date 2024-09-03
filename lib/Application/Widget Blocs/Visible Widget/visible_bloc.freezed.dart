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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) onChanged,
    required TResult Function(String text) onAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? onChanged,
    TResult? Function(String text)? onAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? onChanged,
    TResult Function(String text)? onAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnChanged value) onChanged,
    required TResult Function(OnAdded value) onAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnChanged value)? onChanged,
    TResult? Function(OnAdded value)? onAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnChanged value)? onChanged,
    TResult Function(OnAdded value)? onAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisibleEventCopyWith<$Res> {
  factory $VisibleEventCopyWith(
          VisibleEvent value, $Res Function(VisibleEvent) then) =
      _$VisibleEventCopyWithImpl<$Res, VisibleEvent>;
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
}

/// @nodoc
abstract class _$$OnChangedImplCopyWith<$Res> {
  factory _$$OnChangedImplCopyWith(
          _$OnChangedImpl value, $Res Function(_$OnChangedImpl) then) =
      __$$OnChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
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
    Object? category = null,
  }) {
    return _then(_$OnChangedImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnChangedImpl implements OnChanged {
  const _$OnChangedImpl({required this.category});

  @override
  final String category;

  @override
  String toString() {
    return 'VisibleEvent.onChanged(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangedImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

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
    required TResult Function(String category) onChanged,
    required TResult Function(String text) onAdded,
  }) {
    return onChanged(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? onChanged,
    TResult? Function(String text)? onAdded,
  }) {
    return onChanged?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? onChanged,
    TResult Function(String text)? onAdded,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnChanged value) onChanged,
    required TResult Function(OnAdded value) onAdded,
  }) {
    return onChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnChanged value)? onChanged,
    TResult? Function(OnAdded value)? onAdded,
  }) {
    return onChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnChanged value)? onChanged,
    TResult Function(OnAdded value)? onAdded,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(this);
    }
    return orElse();
  }
}

abstract class OnChanged implements VisibleEvent {
  const factory OnChanged({required final String category}) = _$OnChangedImpl;

  String get category;

  /// Create a copy of VisibleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnChangedImplCopyWith<_$OnChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnAddedImplCopyWith<$Res> {
  factory _$$OnAddedImplCopyWith(
          _$OnAddedImpl value, $Res Function(_$OnAddedImpl) then) =
      __$$OnAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$OnAddedImplCopyWithImpl<$Res>
    extends _$VisibleEventCopyWithImpl<$Res, _$OnAddedImpl>
    implements _$$OnAddedImplCopyWith<$Res> {
  __$$OnAddedImplCopyWithImpl(
      _$OnAddedImpl _value, $Res Function(_$OnAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$OnAddedImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnAddedImpl implements OnAdded {
  const _$OnAddedImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'VisibleEvent.onAdded(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAddedImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of VisibleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAddedImplCopyWith<_$OnAddedImpl> get copyWith =>
      __$$OnAddedImplCopyWithImpl<_$OnAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) onChanged,
    required TResult Function(String text) onAdded,
  }) {
    return onAdded(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? onChanged,
    TResult? Function(String text)? onAdded,
  }) {
    return onAdded?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? onChanged,
    TResult Function(String text)? onAdded,
    required TResult orElse(),
  }) {
    if (onAdded != null) {
      return onAdded(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnChanged value) onChanged,
    required TResult Function(OnAdded value) onAdded,
  }) {
    return onAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnChanged value)? onChanged,
    TResult? Function(OnAdded value)? onAdded,
  }) {
    return onAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnChanged value)? onChanged,
    TResult Function(OnAdded value)? onAdded,
    required TResult orElse(),
  }) {
    if (onAdded != null) {
      return onAdded(this);
    }
    return orElse();
  }
}

abstract class OnAdded implements VisibleEvent {
  const factory OnAdded({required final String text}) = _$OnAddedImpl;

  String get text;

  /// Create a copy of VisibleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnAddedImplCopyWith<_$OnAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VisibleState {
  bool get isTrue => throw _privateConstructorUsedError;
  List<String> get texts => throw _privateConstructorUsedError;

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
  $Res call({bool isTrue, List<String> texts});
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
    Object? isTrue = null,
    Object? texts = null,
  }) {
    return _then(_value.copyWith(
      isTrue: null == isTrue
          ? _value.isTrue
          : isTrue // ignore: cast_nullable_to_non_nullable
              as bool,
      texts: null == texts
          ? _value.texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
  $Res call({bool isTrue, List<String> texts});
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
    Object? isTrue = null,
    Object? texts = null,
  }) {
    return _then(_$VisibleStateImpl(
      isTrue: null == isTrue
          ? _value.isTrue
          : isTrue // ignore: cast_nullable_to_non_nullable
              as bool,
      texts: null == texts
          ? _value._texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$VisibleStateImpl implements _VisibleState {
  const _$VisibleStateImpl(
      {required this.isTrue, required final List<String> texts})
      : _texts = texts;

  @override
  final bool isTrue;
  final List<String> _texts;
  @override
  List<String> get texts {
    if (_texts is EqualUnmodifiableListView) return _texts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_texts);
  }

  @override
  String toString() {
    return 'VisibleState(isTrue: $isTrue, texts: $texts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibleStateImpl &&
            (identical(other.isTrue, isTrue) || other.isTrue == isTrue) &&
            const DeepCollectionEquality().equals(other._texts, _texts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isTrue, const DeepCollectionEquality().hash(_texts));

  /// Create a copy of VisibleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibleStateImplCopyWith<_$VisibleStateImpl> get copyWith =>
      __$$VisibleStateImplCopyWithImpl<_$VisibleStateImpl>(this, _$identity);
}

abstract class _VisibleState implements VisibleState {
  const factory _VisibleState(
      {required final bool isTrue,
      required final List<String> texts}) = _$VisibleStateImpl;

  @override
  bool get isTrue;
  @override
  List<String> get texts;

  /// Create a copy of VisibleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibleStateImplCopyWith<_$VisibleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
