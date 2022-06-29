import 'package:custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../presentation.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          kDetailsTitle,
          iconPath: kBackIconPath,
          iconSize: kSmallIconSize,
          iconColor: Theme.of(context).primaryColorLight,
          titleSpacing: kHorizontalSpace,
          onTap: () => context.read<DetailsCubit>().onTapBackButton(context),
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              top: kVerticalSpace,
              left: kHorizontalSpace,
              right: kHorizontalSpace,
            ),
            child: DetailsBody(),
          ),
        ),
      );
}
