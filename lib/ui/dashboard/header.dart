import 'package:flutter/material.dart';
import 'package:pusher/responsive.dart';

class Header extends StatelessWidget {
  final VoidCallback menuPressed;

  const Header({
    Key? key,
    required this.menuPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: menuPressed,
            icon: const Icon(Icons.menu),
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Send Notification Push",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ],
    );
  }
}
