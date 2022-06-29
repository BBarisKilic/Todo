import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../presentation.dart';
import 'activation_container.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

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
            onPressed: () =>
                context.read<DetailsCubit>().onPressedSaveButton(context),
          ),
        ],
      );
}
