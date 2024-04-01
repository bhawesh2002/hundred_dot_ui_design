import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/pages/onboarding/onboarding.dart';
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
        fontFamily: 'HelveticaNeue',
      ),
      home: const OnBoardingScreen(),
    );
  }
}
