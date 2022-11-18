import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/constants.dart';
class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              startDegreeOffset: -90,
              centerSpaceRadius: 70,
              sections: PieChartSectionsData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: defaultPadding,),
                Text(
                  "29.1",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5
                      ),
                ),
                const Text("Of 128GB")
              ],
            ),
          )
        ],
      ),
    );
  }
}


List<PieChartSectionData> PieChartSectionsData = [
      PieChartSectionData(
        color: primaryColor,
        value: 25,
        showTitle: false,
        radius: 30,
      ),
      PieChartSectionData(
        color: const Color(0xff26e5ff),
        value: 20,
        showTitle: false,
        radius: 25,
      ),
      PieChartSectionData(
          color: const Color(0xffffcf26),
          value: 15,
          showTitle: false,
          radius: 20),
      PieChartSectionData(
          color: const Color(0xffee2727),
          value: 18,
          showTitle: false,
          radius: 15),
      PieChartSectionData(
          color: primaryColor.withOpacity(0.1),
          value: 18,
          showTitle: false,
          radius: 15)
    ];