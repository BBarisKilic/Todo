import '../../core/core.dart';
import '../../domain/domain.dart';
import '../datasources/datasources.dart';

class TaskRepositoryImpl implements TaskRepository {
  final AppDatabase _appDatabase;

  const TaskRepositoryImpl({required AppDatabase appDatabase})
      : _appDatabase = appDatabase;

  @override
  Future<DataState<List<Task>>> getAllTasks(NoParams params) async {
    try {
      final response = await _appDatabase.taskDao.getAllTasks();

      return DataSuccess(response);
    } catch (e) {
      return DataFailure(Failure(title: '$TaskRepositoryImpl', message: '$e'));
    }
  }

  @override
  Future<DataState<void>> addNewTask(AddTaskParams params) async {
    try {
      final response = await _appDatabase.taskDao.insertTask(params.task);

      return DataSuccess(response);
    } catch (e) {
      return DataFailure(Failure(title: '$TaskRepositoryImpl', message: '$e'));
    }
  }

  @override
  Future<DataState<void>> deleteTask(DeleteTaskParams params) async {
    try {
      final response = await _appDatabase.taskDao.deleteTask(params.task);

      return DataSuccess(response);
    } catch (e) {
      return DataFailure(Failure(title: '$TaskRepositoryImpl', message: '$e'));
    }
  }

  @override
  Future<DataState<void>> updateTask(UpdateTaskParams params) async {
    try {
      final response = await _appDatabase.taskDao.insertTask(params.task);

      return DataSuccess(response);
    } catch (e) {
      return DataFailure(Failure(title: '$TaskRepositoryImpl', message: '$e'));
    }
  }
}
