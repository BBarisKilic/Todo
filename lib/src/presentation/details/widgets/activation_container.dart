import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sharp_toggle_switch/sharp_toggle_switch.dart';
import 'package:sizer/sizer.dart';

import '../../../core/core.dart';
import '../../presentation.dart';

class ActivationContainer extends StatelessWidget {
  const ActivationContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(
          vertical: kLongVerticalSpace,
          horizontal: kHorizontalSpace / 2,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).dividerColor),
        ),
        child: Center(
          child: BlocBuilder<DetailsCubit, DetailsState>(
            builder: (_, state) => state.when(
              loading: () => const CircularProgressIndicator(),
              loaded: (isCompleted) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    kStatusText,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SharpToggleSwitch(
                    onToggle: (_) =>
                        context.read<DetailsCubit>().onToggleStatus(),
                    width: 44.w,
                    initialPosition: isCompleted
                        ? SwitchPosition.left
                        : SwitchPosition.right,
                    leftSwitch: kCompletedText,
                    rightSwitch: kActiveText,
                    primaryColor: Theme.of(context).primaryColorLight,
                    secondaryColor: Theme.of(context).backgroundColor,
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
