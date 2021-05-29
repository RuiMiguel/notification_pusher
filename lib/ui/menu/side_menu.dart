import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pusher/styles/colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: bgColor,
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(
                  "assets/images/phone.png",
                ),
              ),
            ),
            child: Center(
              child: Container(
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(0, 5),
                      color: secondaryColor,
                    )
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Notification Pusher",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          DrawerListTile(
            title: "Send NP",
            press: () {},
          ),
          DrawerListTile(
            title: "History",
            press: () {},
          ),
        ],
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
