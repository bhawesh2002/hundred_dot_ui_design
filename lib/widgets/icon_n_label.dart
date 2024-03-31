import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class IconNLabel extends StatelessWidget {
  final String svgPath;
  final String label;
  final VoidCallback? onTap;
  const IconNLabel(
      {super.key, required this.svgPath, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Column(
        children: [
          SizedBox.square(
            dimension: UiSizes.widthPercent(6),
            child: SvgPicture.asset(
              svgPath,
              // ignore: deprecated_member_use
              color: AppColors.primary2,
            ),
          ),
          SizedBox.square(
            dimension: UiSizes.heightPercent(2),
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
