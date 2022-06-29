import 'package:floor/floor.dart';

import '../../../../core/core.dart';
import '../../../../domain/domain.dart';

@dao
abstract class TaskDao {
  @Query('SELECT * FROM $kTasksTableName')
  Future<List<Task>> getAllTasks();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertTask(Task task);

  @delete
  Future<void> deleteTask(Task task);
}
