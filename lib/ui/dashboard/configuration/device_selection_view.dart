import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pusher/bloc/device/device_bloc.dart';
import 'package:pusher/ui/components/radio_text.dart';
import 'package:pusher/ui/dashboard/configuration/android_configuration_view.dart';
import 'package:pusher/ui/dashboard/configuration/ios_configuration_view.dart';

enum DeviceOs { android, ios }

class DeviceSelectionView extends StatelessWidget {
  const DeviceSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DeviceOs? _deviceOs;
    DeviceBloc deviceBloc = BlocProvider.of<DeviceBloc>(context);

    return BlocBuilder<DeviceBloc, DeviceState>(builder: (context, state) {
      if (state is Android) _deviceOs = DeviceOs.android;
      if (state is IOS) _deviceOs = DeviceOs.ios;

      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RadioText(
                value: DeviceOs.android,
                text: "Android",
                radioGroup: _deviceOs,
                onChange: (_) {
                  deviceBloc.add(SelectAndroid());
                },
              ),
              const SizedBox(
                width: 32,
              ),
              RadioText(
                value: DeviceOs.ios,
                text: "iOS",
                radioGroup: _deviceOs,
                onChange: (_) {
                  deviceBloc.add(SelectIOS());
                },
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          if (state is Android) AndroidConfigurationView(),
          if (state is IOS) const IOSConfigurationView(),
        ],
      );
    });
  }
}
