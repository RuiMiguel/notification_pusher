import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:pusher/bloc/device/device_bloc.dart';

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
        create: (context) => DeviceBloc(),
      ),
    ],
    child: widget,
  );
}
