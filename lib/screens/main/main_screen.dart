import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/controllers/MenuController.dart';
import 'package:responsive_admin_panel/responsive.dart';
import 'package:provider/provider.dart';
import '../../components/side_menu.dart';
import '../dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          if (Responsive.isDesktop(context))
            const Expanded(
              flex: 1,
              child: SideMenu(),
            ),
          const Expanded(
            flex: 5,
            child: DashboardScreen(),
          ),
        ]),
      ),
    );
  }
}
