import 'package:custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nil/nil.dart';

import '../../../core/core.dart';
import '../../presentation.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          kAppTitle,
          iconPath: kSettingsIconPath,
          iconSize: kSmallIconSize,
          iconColor: Theme.of(context).primaryColorLight,
          titleSpacing: kHorizontalSpace,
          onTap: () => context.read<TodoCubit>().onTapSettingsButton(context),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: kVerticalSpace,
              left: kHorizontalSpace,
              right: kHorizontalSpace,
            ),
            child: Center(
              child: BlocBuilder<TodoCubit, TodoState>(
                builder: (_, state) => state.when(
                  initial: () => nil,
                  loading: () => const CircularProgressIndicator(),
                  loaded: (tasks) {
                    if (tasks.isEmpty) return const EmptyListView();

                    return TodosListView(tasks);
                  },
                  error: () => const Text(kSomethingWentWrongText),
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<TodoCubit>().onTapAddButton(context),
          child: SvgPicture.asset(kPlusIconPath),
        ),
      );
}
