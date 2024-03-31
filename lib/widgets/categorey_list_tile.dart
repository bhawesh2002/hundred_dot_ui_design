import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class CategoreyListTile extends StatelessWidget {
  final String label;
  final String svgIconPath;
  final VoidCallback? onTap;
  const CategoreyListTile(
      {super.key, required this.label, required this.svgIconPath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(
        UiSizes.widthPercent(8),
      ),
      child: InkWell(
        onTap: onTap ?? () {},
        borderRadius: BorderRadius.circular(
          UiSizes.widthPercent(8),
        ),
        child: Container(
          height: UiSizes.heightPercent(7),
          padding: EdgeInsets.symmetric(
            horizontal: UiSizes.widthPercent(8),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                svgIconPath,
                width: 25,
                height: 25,
                // ignore: deprecated_member_use
                color: AppColors.primary2,
              ),
              SizedBox.square(
                dimension: UiSizes.widthPercent(6),
              ),
              Text(
                label,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: AppColors.blackColor,
                      fontSize: UiSizes.widthPercent(3),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
