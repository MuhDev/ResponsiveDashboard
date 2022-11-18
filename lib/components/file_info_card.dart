import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_panel/components/progress_line.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/models/MyFiles.dart';

class FileCardInfo extends StatelessWidget {
  const FileCardInfo({
    required this.info,
    Key? key,
  }) : super(key: key);
  final CloudStorageInfo info;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(defaultPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: info.color.withOpacity(0.1),
                ),
                child: SvgPicture.asset(info.svgSrc),
              ),
              const Icon(
                Icons.more_vert,
                color: Colors.white54,
              )
            ],
          ),
          Text(
            info.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          ProgressLine(
            color: info.color,
            percentage: info.percentage,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${info.numOfFiels} Files",
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white70),
              ),
              Text(
                info.totalStorage,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

