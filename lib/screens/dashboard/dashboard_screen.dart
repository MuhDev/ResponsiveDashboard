import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/components/header.dart';
import 'package:responsive_admin_panel/components/my_files.dart';
import 'package:responsive_admin_panel/components/recent_file_section.dart';
import 'package:responsive_admin_panel/components/storage_details.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/responsive.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              const Header(),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyFiles(),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        const RecentFIleSection(),
                        if (Responsive.isMobile(context))
                          const SizedBox(
                            height: defaultPadding,
                          ),
                        if (Responsive.isMobile(context))
                          const StorageDetails()
                      ],
                    ),
                  ),
                  if (!Responsive.isMobile(context))
                    const SizedBox(
                      width: defaultPadding,
                    ),
                  if (!Responsive.isMobile(context))
                    const Expanded(
                      flex: 2,
                      child: StorageDetails(),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
