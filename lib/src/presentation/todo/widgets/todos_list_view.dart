import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';

import '../../../core/core.dart';
import '../../../domain/domain.dart';
import '../../presentation.dart';

class TodosListView extends StatelessWidget {
  const TodosListView(this.tasks, {Key? key}) : super(key: key);

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemCount: tasks.length + 1,
        itemBuilder: (context, index) => index == tasks.length
            ? nil
            : Dismissible(
                key: Key('$index'),
                onDismissed: (_) =>
                    context.read<TodoCubit>().onDismissed(tasks[index]),
                direction: DismissDirection.startToEnd,
                background: Container(
                  color: Theme.of(context).colorScheme.secondary,
                  padding: const EdgeInsets.only(left: kHorizontalSpace),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      kRemoveText,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ),
                child: ListTile(
                  onTap: () => context
                      .read<TodoCubit>()
                      .onTapTodoListTile(context, tasks[index]),
                  leading: const Icon(Icons.task),
                  title: Text(
                    tasks[index].title,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  subtitle: Text(
                    tasks[index].isCompleted ? kCompletedText : kActiveText,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: tasks[index].isCompleted
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                ),
              ),
        separatorBuilder: (context, index) => const Divider(
          thickness: 1.0,
          height: 4.0,
        ),
      );
}
