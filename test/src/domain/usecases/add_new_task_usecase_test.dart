import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_list/src/core/core.dart';
import 'package:todo_list/src/domain/domain.dart';

class MockTaskRepository extends Mock implements TaskRepository {}

void main() {
  late MockTaskRepository mockTaskRepository;
  late AddTaskParams addTaskParams;
  late AddNewTaskUseCase sut;

  setUp(() {
    mockTaskRepository = MockTaskRepository();
    addTaskParams = const AddTaskParams(
      task: Task(title: '', description: '', isCompleted: false),
    );
    sut = AddNewTaskUseCase(repository: mockTaskRepository);
  });

  arrangeTaskRepositoryResponse(AddTaskParams params) {
    when(
      () => mockTaskRepository.addNewTask(params),
    ).thenAnswer((_) async => const DataSuccess(null));
  }

  group(
    'AddNewTaskUseCase',
    () {
      test(
        'calls "addNewTask" function only one time',
        () async {
          arrangeTaskRepositoryResponse(addTaskParams);

          await sut(params: addTaskParams);

          verify(() => mockTaskRepository.addNewTask(addTaskParams)).called(1);
        },
      );

      test(
        'adds new task to database',
        () async {
          arrangeTaskRepositoryResponse(addTaskParams);

          final result = await sut(params: addTaskParams);

          expect(result, equals(const DataSuccess<void>(null)));
          verify(() => mockTaskRepository.addNewTask(addTaskParams));
          verifyNoMoreInteractions(mockTaskRepository);
        },
      );
    },
  );
}
