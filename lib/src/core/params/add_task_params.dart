import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'add_task_params.freezed.dart';

@freezed
abstract class AddTaskParams with _$AddTaskParams {
  const factory AddTaskParams({required Task task}) = _AddTaskParams;
}
