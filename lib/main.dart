import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/pages/onboarding/onboarding.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    UiSizes.init(context); //initialize UiSizes
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.primary1,
        inputDecorationTheme: const InputDecorationTheme(
          border: InputBorder.none,
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.bold,
            fontSize: UiSizes.sizeFromWidth(10, 100),
          ),
          titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: UiSizes.widthPercent(5),
          ),
          titleSmall: TextStyle(
            color: Colors.black,
            fontSize: UiSizes.widthPercent(3),
            fontWeight: FontWeight.w600,
          ),
          displaySmall: TextStyle(
            fontSize: UiSizes.sizeFromWidth(6, 100),
            color: AppColors.whiteColor,
            fontWeight: FontWeight.bold,
          ),
          labelSmall: TextStyle(
            color: AppColors.whiteColor,
            fontSize: UiSizes.widthPercent(4),
            fontWeight: FontWeight.w600,
          ),
          headlineSmall: TextStyle(
            fontSize: UiSizes.widthPercent(5),
            fontWeight: FontWeight.bold,
          ),
        ),
        fontFamily: 'HelveticaNeue',
      ),
      home: const OnBoardingScreen(),
    );
  }
}
