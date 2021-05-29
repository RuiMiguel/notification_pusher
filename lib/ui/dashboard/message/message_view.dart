import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pusher/bloc/device/device_bloc.dart';
import 'package:pusher/styles/colors.dart';
import 'package:pusher/ui/components/section_title.dart';
import 'package:pusher/ui/components/input_field.dart';

class MessageView extends StatelessWidget {
  MessageView({Key? key, required this.pressed}) : super(key: key);

  late DeviceBloc deviceBloc;
  final VoidCallback pressed;

  @override
  Widget build(BuildContext context) {
    deviceBloc = BlocProvider.of<DeviceBloc>(context);

    return BlocBuilder<DeviceBloc, DeviceState>(
      builder: (context, state) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SectionTitle(
                title: "Message",
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    if (state is Uninitialized) pressed();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: (state is Uninitialized)
                        ? secondaryColor
                        : primaryColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 24.0),
                  ),
                  icon: const Icon(Icons.send),
                  label: const Text(
                    "SEND",
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
                        maxLines: 3,
                        onSubmit: (value) {},
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "More parameters:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: primaryColor,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 16.0),
                            ),
                            icon: const Icon(Icons.add),
                            label: const Text("Add parameter"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
