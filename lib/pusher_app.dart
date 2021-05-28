import 'package:flutter/material.dart';
import 'package:pusher/dependency_injection.dart';
import 'package:pusher/styles/themes.dart';
import 'package:pusher/ui/main/main_screen.dart';

class PusherApp extends StatelessWidget {
  const PusherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildDependencyInjection(
      widget: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Desktop app",
        theme: appThemeData(context),
        home: const MainScreen(),
      ),
    );
  }
}
