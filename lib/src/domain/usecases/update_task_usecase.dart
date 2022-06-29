import '../../core/core.dart';
import '../domain.dart';

class UpdateTaskUseCase implements UseCase<DataState<void>, UpdateTaskParams> {
  final TaskRepository _taskRepository;

  const UpdateTaskUseCase({required TaskRepository repository})
      : _taskRepository = repository;

  @override
  Future<DataState<void>> call({required UpdateTaskParams params}) =>
      _taskRepository.updateTask(params);
}
