import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/models/RecentFile.dart';

class RecentFIleSection extends StatelessWidget {
  const RecentFIleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
              columns: const [
                DataColumn(label: Text("File Name")),
                DataColumn(label: Text("Date")),
                DataColumn(label: Text("Size")),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileRowItem(
                  demoRecentFiles[index],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
DataRow recentFileRowItem(RecentFile recentFile) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(recentFile.icon),
              const SizedBox(
                width: defaultPadding,
              ),
              Text(recentFile.title)
            ],
          ),
        ),
        DataCell(Text(recentFile.date)),
        DataCell(Text(recentFile.size)),
      ],
    );
  }