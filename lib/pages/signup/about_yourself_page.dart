import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/pages/home.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/auth_button.dart';
import 'package:hundred_dot_ui_design/widgets/auth_text_field.dart';

class AboutYourselfPage extends StatelessWidget {
  const AboutYourselfPage({super.key});

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
                "Tell Us About\nYourself!",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(),
              ),
            ),
          ),
          Positioned.fill(
            bottom: UiSizes.heightPercent(5),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: UiSizes.heightPercent(35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AuthTextfield(hintText: "Your Name"),
                    const AuthTextfield(hintText: "Your Last Name"),
                    const AuthTextfield(hintText: "Confirm Your Password"),
                    AuthButton(
                      label: "Send Code",
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
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
