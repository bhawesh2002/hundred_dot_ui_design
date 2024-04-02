import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class AuthTextfield extends StatelessWidget {
  final String hintText;
  final TextInputType? inputType;
  final bool? obscureText;
  const AuthTextfield(
      {super.key, required this.hintText, this.inputType, this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: UiSizes.widthPercent(93),
        minHeight: UiSizes.heightPercent(7),
      ),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(
          UiSizes.widthPercent(10),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: UiSizes.widthPercent(6),
      ),
      child: Center(
        child: TextField(
          obscureText: obscureText ?? false,
          textAlign: TextAlign.center,
          keyboardType: inputType ?? TextInputType.text,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(fontSize: UiSizes.widthPercent(4))),
        ),
      ),
    );
  }
}
