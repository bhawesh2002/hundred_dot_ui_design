import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/charge_amount_widget_card.dart';
import 'package:hundred_dot_ui_design/widgets/charity_list_tile.dart';
import 'package:hundred_dot_ui_design/widgets/screen_app_bar.dart';

class CharityPage extends StatelessWidget {
  const CharityPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Charity> charityDetailsList = [
      const Charity(imgPath: '', charityName: "Charity Match"),
      const Charity(imgPath: '', charityName: "The Alan Foundation"),
      const Charity(imgPath: '', charityName: "Learning Ally"),
      const Charity(imgPath: '', charityName: "Cancer Care"),
      const Charity(imgPath: '', charityName: "Child Panel"),
      const Charity(imgPath: '', charityName: "African Welfare Foundation"),
      const Charity(imgPath: '', charityName: "Sana Club Fondation"),
    ];
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.scaffoldBgColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: UiSizes.heightPercent(1),
            horizontal: UiSizes.widthPercent(4),
          ),
          child: Column(
            children: [
              const ScreenAppBar(title: "Charity"),
              SizedBox(
                height: UiSizes.heightPercent(3),
              ),
              const ChargeAmountWidgetCard(hintText: "Type Amount"),
              SizedBox(
                height: UiSizes.heightPercent(3.5),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: UiSizes.widthPercent(4)),
                  child: Text(
                    "Charities You Can Help",
                    style: TextStyle(
                      fontSize: UiSizes.widthPercent(4.5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: UiSizes.heightPercent(2),
              ),
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: charityDetailsList.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: UiSizes.heightPercent(1),
                      ),
                      child: CharityListTile(
                          charityDetails: charityDetailsList[index]),
                    );
                  }),
                ),
              ),
              SizedBox(
                height: UiSizes.heightPercent(1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
