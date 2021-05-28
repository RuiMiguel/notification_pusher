import 'package:flutter/material.dart';
import 'package:pusher/styles/colors.dart';
import 'package:pusher/ui/dashboard/configuration/device_selection_view.dart';
import 'package:pusher/ui/dashboard/configuration/message_view.dart';
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
                    DeviceSelectionView(),
                    const SizedBox(
                      height: 16,
                    ),
                    const MessageView(),
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
