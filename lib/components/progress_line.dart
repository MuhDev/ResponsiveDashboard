import 'package:flutter/material.dart';
class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    required this.color,
    required this.percentage,
  }) : super(key: key);

  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: color.withOpacity(0.1),
          ),
        ),
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              width: constraints.maxWidth * (percentage / 100),
              height: 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: color,
              ),
            );
          },
        ),
      ],
    );
  }
}
