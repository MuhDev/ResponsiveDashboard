import 'package:flutter/material.dart';
import '../components/file_info_card.dart';
import '../constants.dart';
import '../models/MyFiles.dart';
import '../responsive.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                  vertical:
                      defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Add New"),
            )
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: FilesCardGridView(
            crossAxisCount: size.width < 600 ? 2 : 4,
          ),
          tablet: const FilesCardGridView(),
          desktop: FilesCardGridView(
              childAspectRatio: size.width < 1400 ? 1.1 : 1.4),
        ),
      ],
    );
  }
}

class FilesCardGridView extends StatelessWidget {
  const FilesCardGridView({
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
    Key? key,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
        mainAxisSpacing: defaultPadding,
      ),
      itemCount: demoMyFiels.length,
      itemBuilder: (BuildContext context, int index) {
        return FileCardInfo(
          info: demoMyFiels[index],
        );
      },
    );
  }
}
