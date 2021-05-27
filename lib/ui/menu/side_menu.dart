import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/phone.png"),
            ),
            DrawerListTile(
              title: "Dashboard",
              press: () {},
            ),
            DrawerListTile(
              title: "History",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title;
  final VoidCallback press;

  const DrawerListTile({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: Image.asset("assets/images/phone.png"),
      horizontalTitleGap: 8.0,
      title: Text(
        title,
        style: GoogleFonts.poppins().apply(color: Colors.white54),
      ),
    );
  }
}
