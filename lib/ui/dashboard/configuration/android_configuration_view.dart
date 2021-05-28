import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pusher/cubit/broadcast/broadcast_cubit.dart';
import 'package:pusher/styles/colors.dart';
import 'package:pusher/ui/dashboard/input_field.dart';

class AndroidConfigurationView extends StatelessWidget {
  AndroidConfigurationView({Key? key}) : super(key: key);

  late BroadcastCubit broadcastCubit;

  @override
  Widget build(BuildContext context) {
    broadcastCubit = BlocProvider.of<BroadcastCubit>(context);

    return BlocBuilder<BroadcastCubit, bool>(builder: (context, state) {
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
                value: state,
                activeColor: primaryColor,
                onChanged: (changed) {
                  broadcastCubit.enableBroadcast(changed ?? true);
                },
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
          if (!state)
            InputField(
              hintText: "set device token",
              labelText: "Receiver",
              onSubmit: (value) {},
            ),
        ],
      );
    });
  }
}
