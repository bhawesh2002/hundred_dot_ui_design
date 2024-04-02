import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/screen_app_bar.dart';

class PhoneBillPage extends StatelessWidget {
  const PhoneBillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBgColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: UiSizes.heightPercent(1),
            horizontal: UiSizes.widthPercent(4),
          ),
          child: Column(
            children: [
              const ScreenAppBar(title: 'Phone Bill'),
              SizedBox(
                height: UiSizes.heightPercent(3),
              ),
              CircleAvatar(
                radius: UiSizes.widthPercent(15),
              ),
              SizedBox(
                height: UiSizes.heightPercent(2),
              ),
              Text(
                "Donnya Hajan",
                style: TextStyle(
                  fontSize: UiSizes.widthPercent(4.5),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "+1 785 624 9690",
                style: TextStyle(
                  fontSize: UiSizes.widthPercent(5),
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: UiSizes.heightPercent(3),
              ),
              //Report Cards
              const ReportCard(reportName: "Midtown Report", amount: "16.00"),
              SizedBox(
                height: UiSizes.heightPercent(2),
              ),
              const ReportCard(reportName: "Final Report", amount: "157.00")
            ],
          ),
        ),
      ),
    );
  }
}

class ReportCard extends StatelessWidget {
  final String reportName;
  final String amount;
  const ReportCard({super.key, required this.reportName, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(UiSizes.widthPercent(4)),
      child: SizedBox(
        width: UiSizes.widthPercent(95),
        height: UiSizes.heightPercent(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              reportName,
              style: TextStyle(
                fontSize: UiSizes.widthPercent(4),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "\$ $amount",
              style: TextStyle(
                fontSize: UiSizes.widthPercent(8),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
