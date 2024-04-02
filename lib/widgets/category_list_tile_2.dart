import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hundred_dot_ui_design/pages/home/home_body.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class CategoreyListTile2 extends StatelessWidget {
  final CategoryItem categoryItem;
  final String amount;
  const CategoreyListTile2(
      {super.key, required this.categoryItem, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(
        UiSizes.widthPercent(8),
      ),
      child: InkWell(
        onTap: categoryItem.navigationPage == null
            ? () {}
            : () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => categoryItem.navigationPage!),
                );
              },
        borderRadius: BorderRadius.circular(
          UiSizes.widthPercent(8),
        ),
        child: Container(
          height: UiSizes.heightPercent(6.5),
          padding: EdgeInsets.symmetric(
            horizontal: UiSizes.widthPercent(8),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                categoryItem.svgIconPath,
                width: 25,
                height: 25,
                // ignore: deprecated_member_use
                color: AppColors.primary2,
              ),
              SizedBox.square(
                dimension: UiSizes.widthPercent(6),
              ),
              Text(
                categoryItem.label,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: AppColors.blackColor,
                      fontSize: UiSizes.widthPercent(3),
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const Expanded(child: SizedBox()),
              Text(
                "-\$$amount",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: AppColors.additionalRed,
                      fontSize: UiSizes.widthPercent(3.5),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
