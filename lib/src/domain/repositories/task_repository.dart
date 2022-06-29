import '../../core/core.dart';
import '../entities/task.dart';

abstract class TaskRepository {
  Future<DataState<List<Task>>> getAllTasks(NoParams params);
  Future<DataState<void>> addNewTask(AddTaskParams params);
  Future<DataState<void>> deleteTask(DeleteTaskParams params);
  Future<DataState<void>> updateTask(UpdateTaskParams params);
}
