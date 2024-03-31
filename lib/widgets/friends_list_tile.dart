import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class FriendListTile extends StatelessWidget {
  final VoidCallback? onTap;
  final String friendName;
  final String cardNumber;
  const FriendListTile(
      {super.key,
      this.onTap,
      required this.friendName,
      required this.cardNumber});

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
          height: UiSizes.heightPercent(6.5),
          padding: EdgeInsets.only(
            right: UiSizes.widthPercent(10),
            left: UiSizes.widthPercent(5),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: UiSizes.widthPercent(6),
                backgroundColor: AppColors.additionalwhite,
              ),
              SizedBox(
                width: UiSizes.widthPercent(5),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    friendName,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.black,
                          fontSize: UiSizes.widthPercent(3.5),
                        ),
                  ),
                  Text(
                    cardNumber,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontSize: UiSizes.widthPercent(3),
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
              const Icon(
                Icons.card_giftcard_outlined,
              )
            ],
          ),
        ),
      ),
    );
  }
}
