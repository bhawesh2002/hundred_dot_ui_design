import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class CharityListTile extends StatelessWidget {
  final Charity charityDetails;
  const CharityListTile({super.key, required this.charityDetails});

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(
        UiSizes.widthPercent(8),
      ),
      child: InkWell(
        onTap: charityDetails.navigationPage == null
            ? () {}
            : () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => charityDetails.navigationPage!),
                );
              },
        borderRadius: BorderRadius.circular(
          UiSizes.widthPercent(8),
        ),
        child: Container(
          height: UiSizes.heightPercent(6.5),
          padding: EdgeInsets.symmetric(
            horizontal: UiSizes.widthPercent(5),
          ),
          child: Row(
            children: [
              charityDetails.imgPath.isEmpty
                  ? CircleAvatar(
                      radius: UiSizes.widthPercent(6),
                      backgroundColor: AppColors.additionalwhite,
                    )
                  : SvgPicture.asset(
                      charityDetails.imgPath,
                      width: 25,
                      height: 25,
                      // ignore: deprecated_member_use
                      color: AppColors.primary2,
                    ),
              SizedBox.square(
                dimension: UiSizes.widthPercent(6),
              ),
              Text(
                charityDetails.charityName,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: AppColors.blackColor,
                      fontSize: UiSizes.widthPercent(3.5),
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Charity {
  final String imgPath;
  final String charityName;
  final Widget? navigationPage;
  const Charity({
    required this.imgPath,
    required this.charityName,
    this.navigationPage,
  });
}
