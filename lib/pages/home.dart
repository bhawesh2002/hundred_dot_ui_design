import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            "Home Page",
            style: TextStyle(
              color: AppColors.primary1,
              fontSize: UiSizes.widthPercent(10),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
