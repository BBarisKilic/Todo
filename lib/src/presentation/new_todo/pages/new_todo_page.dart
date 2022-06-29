import 'package:custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../new_todo.dart';

class NewTodoPage extends StatelessWidget {
  const NewTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          kNewTodoTitle,
          iconPath: kBackIconPath,
          iconSize: kSmallIconSize,
          iconColor: Theme.of(context).primaryColorLight,
          titleSpacing: kHorizontalSpace,
          onTap: () => context.read<NewTodoCubit>().onTapBackButton(context),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: kVerticalSpace,
              left: kHorizontalSpace,
              right: kHorizontalSpace,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TitleTextFormField(
                  controller:
                      context.read<NewTodoCubit>().getTitleEditingController,
                ),
                const SizedBox(height: kVerticalSpace),
                Expanded(
                  child: DescriptionTextFormField(
                    controller: context
                        .read<NewTodoCubit>()
                        .getDescriptionEditingController,
                  ),
                ),
                const SizedBox(height: kVerticalSpace),
                SaveButton(
                  onPressed: () =>
                      context.read<NewTodoCubit>().onPressedSaveButton(context),
                ),
              ],
            ),
          ),
        ),
      );
}
