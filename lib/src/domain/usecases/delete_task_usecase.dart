import '../../core/core.dart';
import '../domain.dart';

class DeleteTaskUseCase implements UseCase<DataState<void>, DeleteTaskParams> {
  final TaskRepository _taskRepository;

  const DeleteTaskUseCase({required TaskRepository repository})
      : _taskRepository = repository;

  @override
  Future<DataState<void>> call({required DeleteTaskParams params}) =>
      _taskRepository.deleteTask(params);
}
