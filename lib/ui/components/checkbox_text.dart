import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pusher/styles/colors.dart';

class CheckboxText extends StatelessWidget {
  const CheckboxText(
      {Key? key,
      required this.text,
      required this.value,
      required this.onChange})
      : super(key: key);

  final String text;
  final bool value;
  final ValueChanged onChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: value,
          activeColor: primaryColor,
          onChanged: onChange,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
