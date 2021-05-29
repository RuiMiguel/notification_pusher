import 'package:flutter/material.dart';
import 'package:pusher/ui/components/checkbox_text.dart';
import 'package:pusher/ui/components/input_field.dart';

class IOSConfigurationView extends StatelessWidget {
  const IOSConfigurationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputField(
          hintText: "get your project key at Firebase Console",
          labelText: "Project key",
          onSubmit: (value) {},
        ),
        const SizedBox(
          height: 16,
        ),
        CheckboxText(
          text: "enable broadcast push",
          value: true,
          onChange: (changed) {},
        ),
        InputField(
          hintText: "set iOS device token",
          labelText: "Receiver",
          onSubmit: (value) {},
        ),
      ],
    );
  }
}
