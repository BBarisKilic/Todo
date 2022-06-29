import 'package:flutter/material.dart';

import '../core.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key, required this.onPressed}) : super(key: key);

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Theme.of(context).colorScheme.secondary,
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: kVerticalSpace),
          ),
        ),
        child: Text(
          kSaveText,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: const Color(0xffF8F3F7)),
        ),
      );
}
