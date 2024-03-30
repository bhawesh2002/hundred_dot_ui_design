import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class AuthButton extends StatelessWidget {
  final String label;
  final double? width;
  final double? height;
  final TextStyle? labelStyle;
  const AuthButton(
      {super.key,
      required this.label,
      this.width,
      this.height,
      this.labelStyle});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.primary2,
        minimumSize: Size(
          UiSizes.widthPercent(width ?? 93),
          UiSizes.heightPercent(height ?? 6),
        ),
      ),
      onPressed: () {},
      child: Text(label,
          style: labelStyle ?? Theme.of(context).textTheme.labelSmall),
    );
  }
}
