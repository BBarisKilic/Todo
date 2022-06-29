import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

import '../../core/core.dart';

@Entity(tableName: kTasksTableName)
class Task extends Equatable {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String title;
  final String description;
  final bool isCompleted;

  const Task({
    this.id,
    required this.title,
    required this.description,
    required this.isCompleted,
  });

  @override
  List<Object> get props => [title, description, isCompleted];

  @override
  bool get stringify => true;
}
