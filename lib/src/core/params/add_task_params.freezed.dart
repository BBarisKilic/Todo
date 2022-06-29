// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_task_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddTaskParams {
  Task get task => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTaskParamsCopyWith<AddTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskParamsCopyWith<$Res> {
  factory $AddTaskParamsCopyWith(
          AddTaskParams value, $Res Function(AddTaskParams) then) =
      _$AddTaskParamsCopyWithImpl<$Res>;
  $Res call({Task task});
}

/// @nodoc
class _$AddTaskParamsCopyWithImpl<$Res>
    implements $AddTaskParamsCopyWith<$Res> {
  _$AddTaskParamsCopyWithImpl(this._value, this._then);

  final AddTaskParams _value;
  // ignore: unused_field
  final $Res Function(AddTaskParams) _then;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_value.copyWith(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc
abstract class _$$_AddTaskParamsCopyWith<$Res>
    implements $AddTaskParamsCopyWith<$Res> {
  factory _$$_AddTaskParamsCopyWith(
          _$_AddTaskParams value, $Res Function(_$_AddTaskParams) then) =
      __$$_AddTaskParamsCopyWithImpl<$Res>;
  @override
  $Res call({Task task});
}

/// @nodoc
class __$$_AddTaskParamsCopyWithImpl<$Res>
    extends _$AddTaskParamsCopyWithImpl<$Res>
    implements _$$_AddTaskParamsCopyWith<$Res> {
  __$$_AddTaskParamsCopyWithImpl(
      _$_AddTaskParams _value, $Res Function(_$_AddTaskParams) _then)
      : super(_value, (v) => _then(v as _$_AddTaskParams));

  @override
  _$_AddTaskParams get _value => super._value as _$_AddTaskParams;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$_AddTaskParams(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$_AddTaskParams implements _AddTaskParams {
  const _$_AddTaskParams({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'AddTaskParams(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTaskParams &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$_AddTaskParamsCopyWith<_$_AddTaskParams> get copyWith =>
      __$$_AddTaskParamsCopyWithImpl<_$_AddTaskParams>(this, _$identity);
}

abstract class _AddTaskParams implements AddTaskParams {
  const factory _AddTaskParams({required final Task task}) = _$_AddTaskParams;

  @override
  Task get task => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddTaskParamsCopyWith<_$_AddTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}
