import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hundred_dot_ui_design/pages/home/home_body.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/enum/months.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/category_list_tile_2.dart';
import 'package:hundred_dot_ui_design/widgets/graph_candle.dart';
import 'package:hundred_dot_ui_design/widgets/graph_legend.dart';
import 'package:hundred_dot_ui_design/widgets/screen_app_bar.dart';
import 'package:hundred_dot_ui_design/widgets/your_balance.dart';

class AccountBalancePage extends StatelessWidget {
  const AccountBalancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBgColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: UiSizes.heightPercent(1),
            horizontal: UiSizes.widthPercent(4),
          ),
          child: Column(
            children: [
              //App Bar
              const ScreenAppBar(
                title: "Account Balance",
                actionIcon: Icons.share,
              ),
              SizedBox(
                height: UiSizes.widthPercent(4),
              ),
              SizedBox(
                width: UiSizes.widthPercent(90),
                child: const YourBalance(),
              ),
              SizedBox(
                height: UiSizes.widthPercent(4),
              ),
              SizedBox(
                width: UiSizes.widthPercent(88),
                child: Row(
                  children: [
                    Text(
                      "Your Account Balance",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const Expanded(child: SizedBox()),
                    SvgPicture.asset('lib/assets/icons/filter.svg')
                  ],
                ),
              ),
              SizedBox(
                height: UiSizes.widthPercent(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  7,
                  (index) {
                    return GraphCandle(
                      candleWidth: UiSizes.widthPercent(5),
                      income: UiSizes.heightPercent(15),
                      spending: UiSizes.heightPercent(10),
                      balance: UiSizes.heightPercent(23),
                      tootltip: Months.values
                          .elementAt(index)
                          .toString()
                          .split(".")[1],
                    );
                  },
                ),
              ),
              SizedBox(
                height: UiSizes.widthPercent(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GraphLegend(
                      label: "Balance",
                      color: AppColors.primary1.withOpacity(0.1)),
                  GraphLegend(
                      label: "Income",
                      color: AppColors.primary1.withOpacity(0.3)),
                  GraphLegend(
                      label: "Spending",
                      color: AppColors.primary1.withOpacity(0.6)),
                ],
              ),
              SizedBox(
                height: UiSizes.widthPercent(5),
              ),
              //Category
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Category",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(
                height: UiSizes.widthPercent(2),
              ),
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: UiSizes.heightPercent(1)),
                      child: const CategoreyListTile2(
                        categoryItem: CategoryItem(
                          label: "Utility",
                          svgIconPath: 'lib/assets/icons/location_pin.svg',
                        ),
                        amount: "746",
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
