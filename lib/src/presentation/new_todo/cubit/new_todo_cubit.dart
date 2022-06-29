// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

import '../../../core/core.dart';
import '../../../domain/domain.dart';
import '../../presentation.dart';

part 'new_todo_state.dart';
part 'new_todo_cubit.freezed.dart';

class NewTodoCubit extends Cubit<NewTodoState> {
  final AddNewTaskUseCase _addNewTaskUseCase;
  final TextEditingController _titleEditingController;
  final TextEditingController _descriptionEditingController;

  NewTodoCubit({
    required AddNewTaskUseCase addNewTaskUseCase,
    required TextEditingController titleEditingController,
    required TextEditingController descriptionEditingController,
  })  : _addNewTaskUseCase = addNewTaskUseCase,
        _titleEditingController = titleEditingController,
        _descriptionEditingController = descriptionEditingController,
        super(const NewTodoState());

  TextEditingController get getTitleEditingController =>
      _titleEditingController;
  TextEditingController get getDescriptionEditingController =>
      _descriptionEditingController;

  void onTapBackButton(BuildContext context) {
    _titleEditingController.clear();
    _descriptionEditingController.clear();

    context.pop();
  }

  Future<void> onPressedSaveButton(BuildContext context) async {
    final task = Task(
      title: _titleEditingController.text,
      description: _descriptionEditingController.text,
      isCompleted: false,
    );

    final dataState =
        await _addNewTaskUseCase(params: AddTaskParams(task: task));

    if (dataState is DataFailure) return;

    context.read<TodoCubit>().loadTasks();
    onTapBackButton(context);
  }
}
