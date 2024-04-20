// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawerListTile(
              svgSrc: "assets/icons/menu_dashboard.svg",
              title: "Dashboard",
              press: () {},
            ),
            DrawerListTile(
              svgSrc: "assets/icons/menu_tran.svg",
              title: "Transactions",
              press: () {},
            ),
            DrawerListTile(
              svgSrc: "assets/icons/menu_task.svg",
              title: "Task",
              press: () {},
            ),
            DrawerListTile(
              svgSrc: "assets/icons/menu_doc.svg",
              title: "Documents",
              press: () {},
            ),
            DrawerListTile(
              svgSrc: "assets/icons/menu_store.svg",
              title: "Store",
              press: () {},
            ),
            DrawerListTile(
              svgSrc: "assets/icons/menu_profile.svg",
              title: "Profile",
              press: () {},
            ),
            DrawerListTile(
              svgSrc: "assets/icons/menu_notification.svg",
              title: "Notifications",
              press: () {},
            ),
            DrawerListTile(
              svgSrc: "assets/icons/menu_setting.svg",
              title: "Settings",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title, svgSrc;
  final VoidCallback press;

  const DrawerListTile({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: SvgPicture.asset(
        svgSrc,
        // ignore: deprecated_member_use
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
