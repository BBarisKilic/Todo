import '../../core/core.dart';
import '../domain.dart';

class GetAllTasksUseCase implements UseCase<DataState<List<Task>>, NoParams> {
  final TaskRepository _taskRepository;

  const GetAllTasksUseCase({required TaskRepository repository})
      : _taskRepository = repository;

  @override
  Future<DataState<List<Task>>> call({required NoParams params}) =>
      _taskRepository.getAllTasks(params);
}
