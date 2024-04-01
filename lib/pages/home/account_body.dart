import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hundred_dot_ui_design/pages/home/home_body.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/categorey_list_tile.dart';

class AccountBody extends StatelessWidget {
  const AccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryItem> acPageOptionsList = [
      const CategoryItem(
          label: "My Account", svgIconPath: "lib/assets/icons/signin.svg"),
      const CategoryItem(
          label: "Scores", svgIconPath: "lib/assets/icons/signin.svg"),
      const CategoryItem(
          label: "Support", svgIconPath: "lib/assets/icons/signin.svg"),
      const CategoryItem(
          label: "Privacy and Policy",
          svgIconPath: "lib/assets/icons/signin.svg"),
      const CategoryItem(
          label: "About Us", svgIconPath: "lib/assets/icons/signin.svg")
    ];
    Map<String, String> acPageOptions = {
      "My Account": "lib/assets/icons/signin.svg",
      "Scores": "lib/assets/icons/signin.svg",
      "Support": "lib/assets/icons/signin.svg",
      "Privacy and Policy": "lib/assets/icons/signin.svg",
      "About Us": "lib/assets/icons/signin.svg",
    };
    return Center(
      child: Column(
        children: [
          SizedBox.square(
            dimension: UiSizes.heightPercent(2),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: UiSizes.widthPercent(8)),
            child: Row(
              children: [
                SizedBox.square(
                  dimension: 25,
                  child: SvgPicture.asset(
                    'lib/assets/icons/notification_unread.svg',
                    // ignore: deprecated_member_use
                    color: AppColors.primary2,
                  ),
                ),
                SizedBox.square(
                  dimension: UiSizes.widthPercent(4),
                ),
                SizedBox.square(
                  dimension: 25,
                  child: SvgPicture.asset(
                    'lib/assets/icons/notification_unread.svg',
                    // ignore: deprecated_member_use
                    color: AppColors.primary2,
                  ),
                ),
                const Expanded(child: SizedBox()),
                SizedBox.square(
                  dimension: 25,
                  child: SvgPicture.asset(
                    'lib/assets/icons/notification_unread.svg',
                    // ignore: deprecated_member_use
                    color: AppColors.primary2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox.square(
            dimension: UiSizes.heightPercent(1),
          ),
          CircleAvatar(
            radius: UiSizes.widthPercent(16),
            backgroundColor: AppColors.primary1,
          ),
          SizedBox.square(
            dimension: UiSizes.heightPercent(2),
          ),
          Text(
            "Donnya Hajan",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: UiSizes.widthPercent(4.5),
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            "5282 3456 7590 1289",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: UiSizes.widthPercent(4),
                  fontWeight: FontWeight.w400,
                ),
          ),
          SizedBox.square(
            dimension: UiSizes.heightPercent(8),
          ),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: acPageOptions.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: UiSizes.widthPercent(5),
                    vertical: UiSizes.heightPercent(1),
                  ),
                  child: CategoreyListTile(
                    categoryItem: acPageOptionsList[index],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
