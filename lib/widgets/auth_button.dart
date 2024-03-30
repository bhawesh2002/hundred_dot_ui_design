import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class AuthButton extends StatelessWidget {
  final String label;
  final double? width;
  final double? height;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final Color? buttonColor;
  final VoidCallback? onPressed;
  const AuthButton(
      {super.key,
      required this.label,
      this.width,
      this.height,
      this.labelStyle,
      this.onPressed,
      this.labelColor,
      this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: buttonColor ?? AppColors.primary2,
        minimumSize: Size(
          UiSizes.widthPercent(width ?? 93),
          UiSizes.heightPercent(height ?? 7),
        ),
      ),
      onPressed: onPressed ?? () {},
      child: Text(
        label,
        style: labelStyle ??
            Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: labelColor,
                ),
      ),
    );
  }
}
