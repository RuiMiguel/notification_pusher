import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

MultiProvider buildDependencyInjection({
  required Widget widget,
}) {
  return _buildDataInjection(
    widget: _buildBlocInjection(
      widget: widget,
    ),
  );
}

MultiRepositoryProvider _buildDataInjection({
  required Widget widget,
}) {
  return MultiRepositoryProvider(
    providers: [],
    child: widget,
  );
}

MultiBlocProvider _buildBlocInjection({
  required Widget widget,
}) {
  return MultiBlocProvider(
    providers: [],
    child: widget,
  );
}
