// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delete_task_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteTaskParams {
  Task get task => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteTaskParamsCopyWith<DeleteTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTaskParamsCopyWith<$Res> {
  factory $DeleteTaskParamsCopyWith(
          DeleteTaskParams value, $Res Function(DeleteTaskParams) then) =
      _$DeleteTaskParamsCopyWithImpl<$Res>;
  $Res call({Task task});
}

/// @nodoc
class _$DeleteTaskParamsCopyWithImpl<$Res>
    implements $DeleteTaskParamsCopyWith<$Res> {
  _$DeleteTaskParamsCopyWithImpl(this._value, this._then);

  final DeleteTaskParams _value;
  // ignore: unused_field
  final $Res Function(DeleteTaskParams) _then;

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
abstract class _$$_DeleteTaskParamsCopyWith<$Res>
    implements $DeleteTaskParamsCopyWith<$Res> {
  factory _$$_DeleteTaskParamsCopyWith(
          _$_DeleteTaskParams value, $Res Function(_$_DeleteTaskParams) then) =
      __$$_DeleteTaskParamsCopyWithImpl<$Res>;
  @override
  $Res call({Task task});
}

/// @nodoc
class __$$_DeleteTaskParamsCopyWithImpl<$Res>
    extends _$DeleteTaskParamsCopyWithImpl<$Res>
    implements _$$_DeleteTaskParamsCopyWith<$Res> {
  __$$_DeleteTaskParamsCopyWithImpl(
      _$_DeleteTaskParams _value, $Res Function(_$_DeleteTaskParams) _then)
      : super(_value, (v) => _then(v as _$_DeleteTaskParams));

  @override
  _$_DeleteTaskParams get _value => super._value as _$_DeleteTaskParams;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$_DeleteTaskParams(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$_DeleteTaskParams implements _DeleteTaskParams {
  const _$_DeleteTaskParams({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'DeleteTaskParams(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteTaskParams &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteTaskParamsCopyWith<_$_DeleteTaskParams> get copyWith =>
      __$$_DeleteTaskParamsCopyWithImpl<_$_DeleteTaskParams>(this, _$identity);
}

abstract class _DeleteTaskParams implements DeleteTaskParams {
  const factory _DeleteTaskParams({required final Task task}) =
      _$_DeleteTaskParams;

  @override
  Task get task => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteTaskParamsCopyWith<_$_DeleteTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}
