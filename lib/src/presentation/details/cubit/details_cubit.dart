import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

import '../../../core/core.dart';
import '../../../domain/domain.dart';

part 'details_state.dart';
part 'details_cubit.freezed.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final UpdateTaskUseCase _updateTaskUseCase;
  final TextEditingController _titleEditingController;
  final TextEditingController _descriptionEditingController;
  late int? _id;
  late bool _isCompleted;

  DetailsCubit({
    required UpdateTaskUseCase updateTaskUseCase,
    required TextEditingController titleEditingController,
    required TextEditingController descriptionEditingController,
  })  : _updateTaskUseCase = updateTaskUseCase,
        _titleEditingController = titleEditingController,
        _descriptionEditingController = descriptionEditingController,
        super(const DetailsState.loading());

  TextEditingController get getTitleEditingController =>
      _titleEditingController;
  TextEditingController get getDescriptionEditingController =>
      _descriptionEditingController;

  void loadTaskDetails(Task task) {
    emit(const DetailsState.loading());

    _id = task.id;
    _isCompleted = task.isCompleted;
    _titleEditingController.text = task.title;
    _descriptionEditingController.text = task.description;

    emit(DetailsState.loaded(isCompleted: task.isCompleted));
  }

  void onTapBackButton(BuildContext context) {
    _titleEditingController.clear();
    _descriptionEditingController.clear();

    context.pop();
  }

  Future<bool> onPressedSaveButton(BuildContext context) async {
    final task = Task(
      id: _id,
      title: _titleEditingController.text,
      description: _descriptionEditingController.text,
      isCompleted: _isCompleted,
    );

    final dataState =
        await _updateTaskUseCase(params: UpdateTaskParams(task: task));

    if (dataState is DataFailure) return false;

    return true;
  }

  void onToggleStatus() => _isCompleted = !_isCompleted;
}
