import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'update_task_params.freezed.dart';

@freezed
abstract class UpdateTaskParams with _$UpdateTaskParams {
  const factory UpdateTaskParams({required Task task}) = _UpdateTaskParams;
}
