import 'package:flutter/material.dart';
import 'package:pusher/styles/colors.dart';

class InputField extends StatelessWidget {
  final String initialValue;
  final String hintText;
  final String labelText;
  final Function(String?) onSubmit;

  const InputField({
    Key? key,
    this.initialValue = "",
    required this.hintText,
    required this.labelText,
    required this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      autocorrect: false,
      cursorColor: primaryColor,
      style: Theme.of(context).textTheme.bodyText1,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        hintStyle: Theme.of(context).textTheme.subtitle2,
        labelStyle: Theme.of(context).textTheme.subtitle2,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        border: const UnderlineInputBorder(),
      ),
      onFieldSubmitted: onSubmit,
    );
  }
}