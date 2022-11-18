import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';
class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: secondaryColor,
      child: ListView(children: [
        DrawerHeader(
          child: Image.asset("assets/images/logo.png"),
        ),
        DrawerListTile(
          press: () {},
          tileIcon: "assets/icons/menu_dashbord.svg",
          title: "Dashboard",
        ),
        DrawerListTile(
          press: () {},
          tileIcon: "assets/icons/menu_tran.svg",
          title: "Transaction",
        ),
        DrawerListTile(
          press: () {},
          tileIcon: "assets/icons/menu_task.svg",
          title: "Task",
        ),
        DrawerListTile(
          tileIcon: "assets/icons/menu_doc.svg",
          title: "Documents",
          press: () {},
        ),
        DrawerListTile(
          press: () {},
          tileIcon: "assets/icons/menu_store.svg",
          title: "Store",
        ),
        DrawerListTile(
          press: () {},
          tileIcon: "assets/icons/menu_notification.svg",
          title: "Notification",
        ),
        DrawerListTile(
          press: () {},
          tileIcon: "assets/icons/menu_profile.svg",
          title: "Profile",
        ),
        DrawerListTile(
          press: () {},
          tileIcon: "assets/icons/menu_setting.svg",
          title: "Settings",
        ),
      ]),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String tileIcon;
  final String title;
  final VoidCallback press;

  const DrawerListTile({
    required this.tileIcon,
    required this.title,
    required this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: SvgPicture.asset(
        tileIcon,
        height: 16,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
