import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:pusher/bloc/device/device_bloc.dart';
import 'package:pusher/cubit/broadcast/broadcast_cubit.dart';
import 'package:pusher/cubit/drawer/drawer_cubit.dart';
import 'package:pusher/cubit/dropdown/dropdown_cubit.dart';

MultiProvider buildDependencyInjection({
  required Widget widget,
}) {
  return _buildBlocInjection(
    widget: widget,
  );
}

/*
MultiRepositoryProvider _buildDataInjection({
  required Widget widget,
}) {
  return MultiRepositoryProvider(
    providers: [],
    child: widget,
  );
}
*/

MultiBlocProvider _buildBlocInjection({
  required Widget widget,
}) {
  return MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => DrawerCubit(),
      ),
      BlocProvider(
        create: (context) => DropdownCubit(),
      ),
      BlocProvider(
        create: (context) => BroadcastCubit(),
      ),
      BlocProvider(
        create: (context) => DeviceBloc(),
      ),
    ],
    child: widget,
  );
}
