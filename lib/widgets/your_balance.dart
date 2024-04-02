import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class YourBalance extends StatelessWidget {
  const YourBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Donnya,",
              style: TextStyle(
                fontSize: UiSizes.widthPercent(4.5),
                color: AppColors.primary2,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: UiSizes.widthPercent(8),
            ),
            Text(
              "Your Balance",
              style: TextStyle(
                fontSize: UiSizes.widthPercent(5.6),
                color: AppColors.primary2,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "\$5,750,20",
              style: TextStyle(
                fontSize: UiSizes.widthPercent(7.8),
                color: AppColors.primary2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Expanded(child: SizedBox()),
        Column(
          children: [
            CircleAvatar(
              radius: UiSizes.widthPercent(10),
            ),
            SizedBox(
              height: UiSizes.widthPercent(2),
            ),
            Text(
              "VISA",
              style: TextStyle(
                fontSize: UiSizes.widthPercent(7.8),
                color: AppColors.primary2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
