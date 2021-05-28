import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pusher/bloc/device/device_bloc.dart';
import 'package:pusher/styles/colors.dart';
import 'package:pusher/ui/dashboard/input_field.dart';

class MessageView extends StatelessWidget {
  MessageView({Key? key}) : super(key: key);

  late DeviceBloc deviceBloc;

  @override
  Widget build(BuildContext context) {
    deviceBloc = BlocProvider.of<DeviceBloc>(context);

    return BlocBuilder<DeviceBloc, DeviceState>(
      builder: (context, state) => Column(
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
                  backgroundColor:
                      (state is Uninitialized) ? secondaryColor : primaryColor,
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
    );
  }
}
