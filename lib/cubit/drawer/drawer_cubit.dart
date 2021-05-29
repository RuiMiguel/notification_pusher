import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class DrawerCubit extends Cubit<bool> {
  DrawerCubit() : super(false);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  bool _drawerOpen = false;

  void toggleDrawer() {
    _drawerOpen = _scaffoldKey.currentState?.isDrawerOpen ?? false;
    if (!_drawerOpen) {
      _scaffoldKey.currentState?.openDrawer();
      _drawerOpen = true;
    } else {
      _drawerOpen = false;
    }
  }
}
