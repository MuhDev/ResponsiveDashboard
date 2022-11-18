import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_panel/constants.dart';
class StorageInfoCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String svgPath;
  final String triller;
  const StorageInfoCard({
    required this.title,
    required this.subTitle,
    required this.svgPath,
    required this.triller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: defaultPadding),
        padding: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultPadding),
          border: Border.all(
            color: primaryColor.withOpacity(0.15),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: SvgPicture.asset(
                svgPath,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      subTitle,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ),
            Text(triller)
          ],
        ));
  }
}