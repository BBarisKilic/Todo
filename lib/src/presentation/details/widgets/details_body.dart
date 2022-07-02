import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../presentation.dart';
import 'activation_container.dart';

class DetailsBody extends StatefulWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TitleTextFormField(
            controller: context.read<DetailsCubit>().getTitleEditingController,
          ),
          const SizedBox(height: kVerticalSpace),
          const ActivationContainer(),
          const SizedBox(height: kVerticalSpace),
          Expanded(
            child: DescriptionTextFormField(
              controller:
                  context.read<DetailsCubit>().getDescriptionEditingController,
            ),
          ),
          const SizedBox(height: kVerticalSpace),
          SaveButton(
            onPressed: () async {
              final shouldContinue = await context
                  .read<DetailsCubit>()
                  .onPressedSaveButton(context);
              if (!shouldContinue) return;
              if (!mounted) return;
              context.read<TodoCubit>().loadTasks();
              context.read<DetailsCubit>().onTapBackButton(context);
            },
          ),
        ],
      );
}
