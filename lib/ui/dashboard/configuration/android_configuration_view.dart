import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pusher/cubit/broadcast/broadcast_cubit.dart';
import 'package:pusher/ui/components/checkbox_text.dart';
import 'package:pusher/ui/components/input_field.dart';

class AndroidConfigurationView extends StatelessWidget {
  AndroidConfigurationView({Key? key}) : super(key: key);

  late BroadcastCubit broadcastCubit;

  @override
  Widget build(BuildContext context) {
    broadcastCubit = BlocProvider.of<BroadcastCubit>(context);

    return BlocBuilder(
      bloc: broadcastCubit,
      builder: (context, bool state) {
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
              value: state,
              onChange: (changed) {
                broadcastCubit.enableBroadcast(changed ?? true);
              },
            ),
            if (!state)
              InputField(
                hintText: "set device token",
                labelText: "Receiver",
                onSubmit: (value) {},
              ),
          ],
        );
      },
    );
  }
}
