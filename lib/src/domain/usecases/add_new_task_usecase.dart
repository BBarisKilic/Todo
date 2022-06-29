import '../../core/core.dart';
import '../domain.dart';

class AddNewTaskUseCase implements UseCase<DataState<void>, AddTaskParams> {
  final TaskRepository _taskRepository;

  const AddNewTaskUseCase({required TaskRepository repository})
      : _taskRepository = repository;

  @override
  Future<DataState<void>> call({required AddTaskParams params}) =>
      _taskRepository.addNewTask(params);
}
