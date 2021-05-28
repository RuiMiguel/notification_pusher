import 'package:flutter/material.dart';
import 'package:pusher/styles/colors.dart';
import 'package:pusher/ui/dashboard/input_field.dart';

class AndroidConfigurationView extends StatelessWidget {
  const AndroidConfigurationView({Key? key}) : super(key: key);

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
        Row(
          children: [
            Checkbox(
              value: true,
              activeColor: primaryColor,
              onChanged: (changed) {},
            ),
            const Text(
              "enable broadcast push",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        InputField(
          hintText: "set device token",
          labelText: "Receiver",
          onSubmit: (value) {},
        ),
      ],
    );
  }
}
