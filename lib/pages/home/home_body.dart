import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/categorey_list_tile.dart';
import 'package:hundred_dot_ui_design/widgets/icon_n_label.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String> categoryItems = {
      "Utility": "lib/assets/icons/ligntning_boult.svg",
      "Account Balance": "lib/assets/icons/ligntning_boult.svg",
      "QR Code": "lib/assets/icons/full_screen.svg",
      "Charity": "lib/assets/icons/heart.svg",
    };
    return Center(
      child: Column(
        children: [
          SizedBox.square(
            dimension: UiSizes.heightPercent(2),
          ),
          //Hundred Dot Visa Card
          Container(
            height: UiSizes.heightPercent(22),
            width: UiSizes.widthPercent(90),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(UiSizes.widthPercent(10)),
              gradient: AppColors.linearGradient,
            ),
          ),
          SizedBox.square(
            dimension: UiSizes.heightPercent(3.5),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: UiSizes.widthPercent(8)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconNLabel(
                  svgPath: 'lib/assets/icons/phone.svg',
                  label: "Charge",
                ),
                IconNLabel(
                  svgPath: 'lib/assets/icons/phone.svg',
                  label: "Internet",
                ),
                IconNLabel(
                  svgPath: 'lib/assets/icons/transfer.svg',
                  label: "Transfer",
                ),
                IconNLabel(
                  svgPath: 'lib/assets/icons/money.svg',
                  label: "Bill",
                ),
              ],
            ),
          ),
          SizedBox.square(
            dimension: UiSizes.heightPercent(4),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: UiSizes.widthPercent(10)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Categorey",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: UiSizes.widthPercent(4.5)),
              ),
            ),
          ),
          SizedBox.square(
            dimension: UiSizes.heightPercent(2),
          ),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: categoryItems.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: UiSizes.widthPercent(5),
                    vertical: UiSizes.heightPercent(1),
                  ),
                  child: CategoreyListTile(
                      label: categoryItems.keys.elementAt(index),
                      svgIconPath: categoryItems.values.elementAt(index)),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
