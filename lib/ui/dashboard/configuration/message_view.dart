import 'package:flutter/material.dart';
import 'package:pusher/ui/dashboard/input_field.dart';

class MessageView extends StatelessWidget {
  const MessageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Message",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              ),
              icon: const Icon(Icons.send),
              label: const Text("Send push"),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        InputField(
          hintText: "title of the notification",
          labelText: "Title",
          onSubmit: (value) {},
        ),
        const SizedBox(
          height: 16,
        ),
        InputField(
          hintText: "body of the notification",
          labelText: "Body",
          onSubmit: (value) {},
        ),
      ],
    );
  }
}
