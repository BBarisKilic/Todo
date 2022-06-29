import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_list/src/core/core.dart';
import 'package:todo_list/src/data/data.dart';

class MockAppDatabase extends Mock implements AppDatabase {}

void main() {
  late MockAppDatabase mockAppDatabase;
  late NoParams noParams;
  late TaskRepositoryImpl sut;

  setUp(() {
    mockAppDatabase = MockAppDatabase();
    noParams = const NoParams();
    sut = TaskRepositoryImpl(appDatabase: mockAppDatabase);
  });

  arrangeAppDatabaseGetAllTasksResponse() {
    when(() => mockAppDatabase.taskDao.getAllTasks())
        .thenAnswer((_) async => []);
  }

  group(
    'TaskRepositoryImpl',
    () {
      test(
        'calls "getAllTasks" function only one time',
        () async {
          arrangeAppDatabaseGetAllTasksResponse();

          await sut.getAllTasks(noParams);

          verify(() => mockAppDatabase.taskDao.getAllTasks()).called(1);
        },
      );
    },
  );
}
