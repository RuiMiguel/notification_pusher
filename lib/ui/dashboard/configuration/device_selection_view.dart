import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pusher/bloc/device/device_bloc.dart';
import 'package:pusher/styles/colors.dart';
import 'package:pusher/ui/dashboard/configuration/android_configuration_view%20copy.dart';
import 'package:pusher/ui/dashboard/configuration/ios_configuration_view.dart';

enum DeviceOs { android, ios }

class DeviceSelectionView extends StatelessWidget {
  DeviceSelectionView({Key? key}) : super(key: key);

  late DeviceBloc deviceBloc;
  DeviceOs? _deviceOs;

  @override
  Widget build(BuildContext context) {
    deviceBloc = BlocProvider.of<DeviceBloc>(context);

    return BlocBuilder<DeviceBloc, DeviceState>(builder: (context, state) {
      if (state is Android) _deviceOs = DeviceOs.android;
      if (state is IOS) _deviceOs = DeviceOs.ios;

      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                value: DeviceOs.android,
                groupValue: _deviceOs,
                activeColor: primaryColor,
                onChanged: (_) {
                  deviceBloc.add(SelectAndroid());
                },
              ),
              const Text(
                'Android',
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(
                width: 32,
              ),
              Radio(
                value: DeviceOs.ios,
                groupValue: _deviceOs,
                activeColor: primaryColor,
                onChanged: (_) {
                  deviceBloc.add(SelectIOS());
                },
              ),
              const Text(
                'iOS',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          if (state is Android) const AndroidConfigurationView(),
          if (state is IOS) const IOSConfigurationView(),
        ],
      );
    });
  }
}
