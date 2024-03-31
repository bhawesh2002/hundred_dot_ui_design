import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/enum/transfer_type.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/history_list_tile.dart';

class TransferBody extends StatelessWidget {
  const TransferBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<History> historyList = [
      const History(
        transferType: TransferType.bill,
        time: "12:27AM",
        weekday: "Today",
        title: "October Bill",
        moneyTransfered: "+\$1900",
        moneyColor: AppColors.additionalGreen,
      ),
      const History(
        transferType: TransferType.transfer,
        time: "12:27AM",
        weekday: "Today",
        title: "Tony Stark",
        moneyTransfered: "+\$494.50",
        moneyColor: AppColors.additionalGreen,
      ),
      const History(
        transferType: TransferType.online,
        time: "12:27AM",
        weekday: "Today",
        title: "Internet Membership",
        moneyTransfered: "+\$856.23",
        moneyColor: AppColors.additionalGreen,
      ),
      const History(
        transferType: TransferType.transfer,
        time: "12:27AM",
        weekday: "Tuesday",
        title: "Vergill Redgrave",
        moneyTransfered: "+\$184.26",
        moneyColor: AppColors.additionalYellow,
      ),
      const History(
        transferType: TransferType.transfer,
        time: "12:27AM",
        weekday: "Tuesday",
        title: "Selena Kyle",
        moneyTransfered: "-\$1221.85",
        moneyColor: AppColors.additionalGreen,
      ),
      const History(
        transferType: TransferType.transfer,
        time: "12:27AM",
        weekday: "Wednesday",
        title: "Freya Odinson",
        moneyTransfered: "-\$424.99",
        moneyColor: AppColors.additionalGreen,
      ),
      const History(
        transferType: TransferType.phone,
        time: "12:27AM",
        weekday: "Thrusday",
        title: "October Phone Bill",
        moneyTransfered: "-\$784.09",
        moneyColor: AppColors.additionalRed,
      ),
      const History(
        transferType: TransferType.phone,
        time: "12:27AM",
        weekday: "Thrusday",
        title: "AT&T Annual Charge Bill",
        moneyTransfered: "-\$293.68",
        moneyColor: AppColors.additionalGreen,
      ),
    ];
    return Center(
      child: Column(
        children: [
          SizedBox.square(
            dimension: UiSizes.heightPercent(2),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: UiSizes.widthPercent(8)),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Transactions",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: UiSizes.heightPercent(2)),
            child: Material(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    UiSizes.widthPercent(8),
                  ),
                  side: BorderSide(
                      width: 1, color: Colors.black.withOpacity(0.2))),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(
                  UiSizes.widthPercent(8),
                ),
                child: Container(
                  height: UiSizes.heightPercent(6.5),
                  width: UiSizes.widthPercent(92),
                  padding: EdgeInsets.only(
                    right: UiSizes.widthPercent(10),
                    left: UiSizes.widthPercent(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "New Transactions",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(
                        width: UiSizes.widthPercent(2),
                      ),
                      SizedBox.square(
                          dimension: UiSizes.widthPercent(2),
                          child: SvgPicture.asset("lib/assets/icons/plus.svg"))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: UiSizes.widthPercent(8)),
            child: Row(
              children: [
                Text(
                  "History",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Expanded(child: SizedBox()),
                SvgPicture.asset("lib/assets/icons/filter.svg"),
                SizedBox(
                  width: UiSizes.widthPercent(3),
                ),
                Text(
                  "See All",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: AppColors.primary1),
                ),
              ],
            ),
          ),
          SizedBox.square(
            dimension: UiSizes.heightPercent(1),
          ),
          Flexible(
              child: ListView.builder(
                  itemCount: historyList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: UiSizes.widthPercent(5),
                        vertical: UiSizes.heightPercent(1),
                      ),
                      child: HistoryListTile(history: historyList[index]),
                    );
                  }))
        ],
      ),
    );
  }
}

class History {
  final TransferType transferType;
  final String title;
  final String time;
  final String weekday;
  final String moneyTransfered;
  final Color moneyColor;

  const History(
      {required this.transferType,
      required this.time,
      required this.weekday,
      required this.title,
      required this.moneyTransfered,
      required this.moneyColor});
}
