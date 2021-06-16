import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pusher/bloc/sender/sender_bloc.dart';
import 'package:pusher/cubit/drawer/drawer_cubit.dart';
import 'package:pusher/ui/dashboard/configuration/configuration_view.dart';
import 'package:pusher/ui/dashboard/message/message_view.dart';
import 'package:pusher/ui/dashboard/header.dart';
import 'package:pusher/ui/dashboard/response_view.dart';
import 'package:pusher/ui/menu/side_menu.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DrawerCubit drawerCubit = BlocProvider.of<DrawerCubit>(context);
    SenderBloc senderBloc = BlocProvider.of<SenderBloc>(context);

    return BlocBuilder<SenderBloc, SenderState>(
      builder: (context, state) {
        return Scaffold(
          key: drawerCubit.scaffoldKey,
          drawer: const SideMenu(),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Header(
                    menuPressed: () => drawerCubit.toggleDrawer(),
                  ),
                  const SizedBox(height: 16.0),
                  ConfigurationView(),
                  const SizedBox(height: 16.0),
                  MessageView(
                    pressed: () {
                      senderBloc.add(
                        SendMessage(
                            "projectKey", "deviceToken", "title", "body"),
                      );
                    },
                  ),
                  const SizedBox(height: 16.0),
                  ResponseView(
                    state: state,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
