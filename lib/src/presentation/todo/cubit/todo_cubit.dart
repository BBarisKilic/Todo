import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

import '../../../core/core.dart';
import '../../../domain/domain.dart';
import '../../presentation.dart';

part 'todo_state.dart';
part 'todo_cubit.freezed.dart';

class TodoCubit extends Cubit<TodoState> {
  final GetAllTasksUseCase _getAllTasksUseCase;
  final DeleteTaskUseCase _deleteTaskUseCase;

  TodoCubit({
    required GetAllTasksUseCase getAllTasksUseCase,
    required DeleteTaskUseCase deleteTaskUseCase,
  })  : _getAllTasksUseCase = getAllTasksUseCase,
        _deleteTaskUseCase = deleteTaskUseCase,
        super(const TodoState.initial()) {
    loadTasks();
  }

  Future<void> loadTasks() async {
    emit(const TodoState.loading());

    await Future.delayed(const Duration(milliseconds: 300));

    final dataState = await _getAllTasksUseCase(params: const NoParams());

    if (dataState is DataFailure) {
      emit(const TodoState.error());
      return;
    }

    emit(TodoState.loaded(tasks: dataState.data ?? []));
  }

  Future<void> _deleteTask(Task task) async {
    emit(const TodoState.loading());

    final params = DeleteTaskParams(task: task);

    final dataState = await _deleteTaskUseCase(params: params);

    if (dataState is DataFailure) {
      emit(const TodoState.error());
      return;
    }
  }

  void onTapSettingsButton(BuildContext context) =>
      context.push(kSettingsPagePath);

  void onTapAddButton(BuildContext context) => context.push(kNewTodoPagePath);

  Future<void> onDismissed(Task task) async {
    await _deleteTask(task);
    await loadTasks();
  }

  void onTapTodoListTile(BuildContext context, Task task) {
    context.read<DetailsCubit>().loadTaskDetails(task);
    context.push(kDetailsPagePath);
  }
}
