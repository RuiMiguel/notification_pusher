import 'package:flutter/material.dart';
import 'package:pusher/ui/dashboard/configuration_view.dart';
import 'package:pusher/ui/dashboard/header.dart';
import 'package:pusher/ui/dashboard/response_view.dart';
import 'package:pusher/ui/menu/side_menu.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Header(),
              const SizedBox(height: 8.0),
              ConfigurationView(),
              const SizedBox(height: 8.0),
              ResponseView(),
            ],
          ),
        ),
      ),
    );
  }
}
