// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_task_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateTaskParams {
  Task get task => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateTaskParamsCopyWith<UpdateTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskParamsCopyWith<$Res> {
  factory $UpdateTaskParamsCopyWith(
          UpdateTaskParams value, $Res Function(UpdateTaskParams) then) =
      _$UpdateTaskParamsCopyWithImpl<$Res>;
  $Res call({Task task});
}

/// @nodoc
class _$UpdateTaskParamsCopyWithImpl<$Res>
    implements $UpdateTaskParamsCopyWith<$Res> {
  _$UpdateTaskParamsCopyWithImpl(this._value, this._then);

  final UpdateTaskParams _value;
  // ignore: unused_field
  final $Res Function(UpdateTaskParams) _then;

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
abstract class _$$_UpdateTaskParamsCopyWith<$Res>
    implements $UpdateTaskParamsCopyWith<$Res> {
  factory _$$_UpdateTaskParamsCopyWith(
          _$_UpdateTaskParams value, $Res Function(_$_UpdateTaskParams) then) =
      __$$_UpdateTaskParamsCopyWithImpl<$Res>;
  @override
  $Res call({Task task});
}

/// @nodoc
class __$$_UpdateTaskParamsCopyWithImpl<$Res>
    extends _$UpdateTaskParamsCopyWithImpl<$Res>
    implements _$$_UpdateTaskParamsCopyWith<$Res> {
  __$$_UpdateTaskParamsCopyWithImpl(
      _$_UpdateTaskParams _value, $Res Function(_$_UpdateTaskParams) _then)
      : super(_value, (v) => _then(v as _$_UpdateTaskParams));

  @override
  _$_UpdateTaskParams get _value => super._value as _$_UpdateTaskParams;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$_UpdateTaskParams(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$_UpdateTaskParams implements _UpdateTaskParams {
  const _$_UpdateTaskParams({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'UpdateTaskParams(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTaskParams &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateTaskParamsCopyWith<_$_UpdateTaskParams> get copyWith =>
      __$$_UpdateTaskParamsCopyWithImpl<_$_UpdateTaskParams>(this, _$identity);
}

abstract class _UpdateTaskParams implements UpdateTaskParams {
  const factory _UpdateTaskParams({required final Task task}) =
      _$_UpdateTaskParams;

  @override
  Task get task => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateTaskParamsCopyWith<_$_UpdateTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}
