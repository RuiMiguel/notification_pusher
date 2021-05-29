import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pusher/styles/colors.dart';

class RadioText extends StatelessWidget {
  const RadioText(
      {Key? key,
      required this.text,
      required this.value,
      this.radioGroup,
      required this.onChange})
      : super(key: key);

  final String text;
  final Object value;
  final Object? radioGroup;
  final ValueChanged onChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio(
          value: value,
          groupValue: radioGroup,
          activeColor: primaryColor,
          onChanged: onChange,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
