import 'package:flutter/material.dart';
import 'package:pusher/styles/colors.dart';
import 'package:pusher/ui/dashboard/input_field.dart';

class ConfigurationView extends StatelessWidget {
  const ConfigurationView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Configuration",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    InputField(
                      hintText: "hint",
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
                      hintText: "device token",
                      labelText: "Receiver",
                      onSubmit: (value) {},
                    ),
                    const SizedBox(
                      height: 16,
                    ),
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 16.0),
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
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
