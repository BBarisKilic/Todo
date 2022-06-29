import 'package:flutter/material.dart';

import '../core.dart';

class TitleTextFormField extends StatelessWidget {
  const TitleTextFormField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: kTitleText,
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
            borderSide: BorderSide(color: Theme.of(context).dividerColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
            borderSide: BorderSide(color: Theme.of(context).dividerColor),
          ),
        ),
      );
}
