import 'package:flutter/material.dart';
import 'package:pusher/responsive.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ],
    );
  }
}
