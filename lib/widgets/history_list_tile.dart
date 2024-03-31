import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hundred_dot_ui_design/pages/home/transfer_body.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/enum/transfer_type.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class HistoryListTile extends StatelessWidget {
  final VoidCallback? onTap;
  final History history;
  const HistoryListTile({super.key, this.onTap, required this.history});

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
          padding: EdgeInsets.symmetric(
            horizontal: UiSizes.widthPercent(5),
          ),
          child: Row(
            children: [
              if (history.transferType == TransferType.bill)
                SvgPicture.asset(
                  'lib/assets/icons/money.svg',
                  // ignore: deprecated_member_use
                  color: AppColors.primary2,
                  width: UiSizes.widthPercent(3),
                  height: UiSizes.widthPercent(4),
                )
              else if (history.transferType == TransferType.phone)
                SvgPicture.asset(
                  'lib/assets/icons/phone.svg',
                  // ignore: deprecated_member_use
                  color: AppColors.primary2,
                  width: UiSizes.widthPercent(5),
                  height: UiSizes.widthPercent(5),
                )
              else
                SvgPicture.asset(
                  'lib/assets/icons/transfer.svg',
                  // ignore: deprecated_member_use
                  color: AppColors.primary2,
                  width: UiSizes.widthPercent(5),
                  height: UiSizes.widthPercent(5),
                ),
              SizedBox(
                width: UiSizes.widthPercent(5),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    history.title,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.black,
                          fontSize: UiSizes.widthPercent(3.5),
                        ),
                  ),
                  Text(
                    "${history.weekday} | 12:27AM",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontSize: UiSizes.widthPercent(3),
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
              Text(
                history.moneyTransfered,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: history.moneyColor,
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
