import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  static const double _MAX_MOBILE_WIDHT = 850;
  static const double _MAX_TABLET_WIDHT = 1100;

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive(
      {Key? key,
      required this.mobile,
      required this.tablet,
      required this.desktop})
      : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < _MAX_MOBILE_WIDHT;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < _MAX_TABLET_WIDHT &&
      MediaQuery.of(context).size.width >= _MAX_MOBILE_WIDHT;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= _MAX_TABLET_WIDHT;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (_size.width >= _MAX_TABLET_WIDHT) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (_size.width >= _MAX_MOBILE_WIDHT) {
      return tablet;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
