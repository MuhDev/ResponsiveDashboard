import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/components/chart.dart';
import 'package:responsive_admin_panel/components/storage_info_card.dart';
import 'package:responsive_admin_panel/constants.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Storage Details",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: defaultPadding,), 
          Chart(),
          StorageInfoCard(
            svgPath: "assets/icons/Documents.svg",
            title: "Documents Files",
            subTitle: "1328 Files",
            triller: "1.3GB",
          ),
          StorageInfoCard(
            svgPath: "assets/icons/media.svg",
            title: "Media Files",
            subTitle: "1328 Files",
            triller: "15.3GB",
          ),
          StorageInfoCard(
            svgPath: "assets/icons/folder.svg",
            title: "Other Files",
            subTitle: "1328 Files",
            triller: "5.3GB",
          ),
          StorageInfoCard(
            svgPath: "assets/icons/unknown.svg",
            title: "Unknown Files",
            subTitle: "1328 Files",
            triller: "1.3GB",
          ),
        ],
      ),
    );
  }
}


