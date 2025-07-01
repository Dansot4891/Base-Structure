// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tapTodo,
    required TResult Function() tapButton2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? tapTodo,
    TResult? Function()? tapButton2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tapTodo,
    TResult Function()? tapButton2,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TapTodo value) tapTodo,
    required TResult Function(TapButton2 value) tapButton2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TapTodo value)? tapTodo,
    TResult? Function(TapButton2 value)? tapButton2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TapTodo value)? tapTodo,
    TResult Function(TapButton2 value)? tapButton2,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoActionCopyWith<$Res> {
  factory $TodoActionCopyWith(
          TodoAction value, $Res Function(TodoAction) then) =
      _$TodoActionCopyWithImpl<$Res, TodoAction>;
}

/// @nodoc
class _$TodoActionCopyWithImpl<$Res, $Val extends TodoAction>
    implements $TodoActionCopyWith<$Res> {
  _$TodoActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TapTodoImplCopyWith<$Res> {
  factory _$$TapTodoImplCopyWith(
          _$TapTodoImpl value, $Res Function(_$TapTodoImpl) then) =
      __$$TapTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$TapTodoImplCopyWithImpl<$Res>
    extends _$TodoActionCopyWithImpl<$Res, _$TapTodoImpl>
    implements _$$TapTodoImplCopyWith<$Res> {
  __$$TapTodoImplCopyWithImpl(
      _$TapTodoImpl _value, $Res Function(_$TapTodoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$TapTodoImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TapTodoImpl implements TapTodo {
  const _$TapTodoImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'TodoAction.tapTodo(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TapTodoImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of TodoAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TapTodoImplCopyWith<_$TapTodoImpl> get copyWith =>
      __$$TapTodoImplCopyWithImpl<_$TapTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tapTodo,
    required TResult Function() tapButton2,
  }) {
    return tapTodo(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? tapTodo,
    TResult? Function()? tapButton2,
  }) {
    return tapTodo?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tapTodo,
    TResult Function()? tapButton2,
    required TResult orElse(),
  }) {
    if (tapTodo != null) {
      return tapTodo(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TapTodo value) tapTodo,
    required TResult Function(TapButton2 value) tapButton2,
  }) {
    return tapTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TapTodo value)? tapTodo,
    TResult? Function(TapButton2 value)? tapButton2,
  }) {
    return tapTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TapTodo value)? tapTodo,
    TResult Function(TapButton2 value)? tapButton2,
    required TResult orElse(),
  }) {
    if (tapTodo != null) {
      return tapTodo(this);
    }
    return orElse();
  }
}

abstract class TapTodo implements TodoAction {
  const factory TapTodo(final int index) = _$TapTodoImpl;

  int get index;

  /// Create a copy of TodoAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TapTodoImplCopyWith<_$TapTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TapButton2ImplCopyWith<$Res> {
  factory _$$TapButton2ImplCopyWith(
          _$TapButton2Impl value, $Res Function(_$TapButton2Impl) then) =
      __$$TapButton2ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TapButton2ImplCopyWithImpl<$Res>
    extends _$TodoActionCopyWithImpl<$Res, _$TapButton2Impl>
    implements _$$TapButton2ImplCopyWith<$Res> {
  __$$TapButton2ImplCopyWithImpl(
      _$TapButton2Impl _value, $Res Function(_$TapButton2Impl) _then)
      : super(_value, _then);

  /// Create a copy of TodoAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TapButton2Impl implements TapButton2 {
  const _$TapButton2Impl();

  @override
  String toString() {
    return 'TodoAction.tapButton2()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TapButton2Impl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tapTodo,
    required TResult Function() tapButton2,
  }) {
    return tapButton2();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? tapTodo,
    TResult? Function()? tapButton2,
  }) {
    return tapButton2?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tapTodo,
    TResult Function()? tapButton2,
    required TResult orElse(),
  }) {
    if (tapButton2 != null) {
      return tapButton2();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TapTodo value) tapTodo,
    required TResult Function(TapButton2 value) tapButton2,
  }) {
    return tapButton2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TapTodo value)? tapTodo,
    TResult? Function(TapButton2 value)? tapButton2,
  }) {
    return tapButton2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TapTodo value)? tapTodo,
    TResult Function(TapButton2 value)? tapButton2,
    required TResult orElse(),
  }) {
    if (tapButton2 != null) {
      return tapButton2(this);
    }
    return orElse();
  }
}

abstract class TapButton2 implements TodoAction {
  const factory TapButton2() = _$TapButton2Impl;
}
