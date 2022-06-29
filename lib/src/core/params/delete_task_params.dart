import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'delete_task_params.freezed.dart';

@freezed
abstract class DeleteTaskParams with _$DeleteTaskParams {
  const factory DeleteTaskParams({required Task task}) = _DeleteTaskParams;
}
