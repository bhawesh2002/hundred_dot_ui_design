import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/pages/login/login.dart';
import 'package:hundred_dot_ui_design/pages/signup/signup.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/auth_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              width: UiSizes.deviceWidth,
              height: UiSizes.deviceHeight,
              color: AppColors.secondary,
            ),
          ),
          Positioned.fill(
            top: UiSizes.heightPercent(5),
            left: UiSizes.widthPercent(6),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Welcome!",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(),
              ),
            ),
          ),
          Positioned.fill(
            top: UiSizes.heightPercent(20),
            left: UiSizes.widthPercent(6),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Ready To Simplify\nYour Tansactions?",
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ),
          Positioned.fill(
            bottom: UiSizes.heightPercent(5),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: UiSizes.heightPercent(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AuthButton(
                      label: "Login",
                      labelColor: Colors.black,
                      buttonColor: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                    ),
                    AuthButton(
                      label: "Signup",
                      labelColor: Colors.black,
                      buttonColor: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SignupPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
