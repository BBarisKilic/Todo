import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/core.dart';

class EmptyListView extends StatelessWidget {
  const EmptyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.task,
            size: 10.h,
          ),
          const SizedBox(height: kVeryLongVerticalSpace),
          Text(
            kLookingForTodoText,
            style: Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: kVeryLongVerticalSpace),
          Text(
            kEmptyTodosText,
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
        ],
      );
}
