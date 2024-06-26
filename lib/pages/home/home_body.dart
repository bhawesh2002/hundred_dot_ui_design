import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/pages/home/home_body/account_balance_from_card.dart';
import 'package:hundred_dot_ui_design/pages/home/home_body/account_balance_page.dart';
import 'package:hundred_dot_ui_design/pages/home/home_body/charity_page.dart';
import 'package:hundred_dot_ui_design/pages/home/home_body/phone_bill.dart';
import 'package:hundred_dot_ui_design/pages/home/home_body/phone_charge.dart';
import 'package:hundred_dot_ui_design/pages/home/home_body/qr_code_page.dart';
import 'package:hundred_dot_ui_design/pages/home/home_body/transfer_page.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/categorey_list_tile.dart';
import 'package:hundred_dot_ui_design/widgets/icon_n_label.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryItem> categoryItems = [
      const CategoryItem(
          label: "Utility",
          svgIconPath: "lib/assets/icons/ligntning_boult.svg"),
      const CategoryItem(
        label: "Account Balance",
        svgIconPath: "lib/assets/icons/ligntning_boult.svg",
        navigationPage: AccountBalancePage(),
      ),
      const CategoryItem(
          label: "QR Code",
          svgIconPath: "lib/assets/icons/full_screen.svg",
          navigationPage: QRCodePage()),
      const CategoryItem(
          label: "Charity",
          svgIconPath: "lib/assets/icons/heart.svg",
          navigationPage: CharityPage())
    ];
    // Map<String, String> categoryItems = {
    //   "Utility": "lib/assets/icons/ligntning_boult.svg",
    //   "Account Balance": "lib/assets/icons/ligntning_boult.svg",
    //   "QR Code": "lib/assets/icons/full_screen.svg",
    //   "Charity": "lib/assets/icons/heart.svg",
    // };
    return Center(
      child: Column(
        children: [
          SizedBox.square(
            dimension: UiSizes.heightPercent(2),
          ),
          //Hundred Dot Visa Card
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AccountBalanceFromCard()));
            },
            child: Container(
              height: UiSizes.heightPercent(22),
              width: UiSizes.widthPercent(90),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(UiSizes.widthPercent(10)),
                gradient: AppColors.linearGradient,
              ),
            ),
          ),
          SizedBox.square(
            dimension: UiSizes.heightPercent(3.5),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: UiSizes.widthPercent(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconNLabel(
                  svgPath: 'lib/assets/icons/phone.svg',
                  label: "Charge",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PhoneChargePage()));
                  },
                ),
                const IconNLabel(
                  svgPath: 'lib/assets/icons/phone.svg',
                  label: "Internet",
                ),
                IconNLabel(
                  svgPath: 'lib/assets/icons/transfer.svg',
                  label: "Transfer",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TransferPage()));
                  },
                ),
                IconNLabel(
                  svgPath: 'lib/assets/icons/money.svg',
                  label: "Bill",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PhoneBillPage()));
                  },
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
                    categoryItem: categoryItems[index],
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

class CategoryItem {
  final String label;
  final String svgIconPath;
  final Widget? navigationPage;

  const CategoryItem(
      {required this.label, required this.svgIconPath, this.navigationPage});
}
