import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/pages/home/home_body/phone_charge_payment.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/charge_amount_widget_card.dart';
import 'package:hundred_dot_ui_design/widgets/screen_app_bar.dart';

class PhoneChargePage extends StatelessWidget {
  const PhoneChargePage({super.key});

  @override
  Widget build(BuildContext context) {
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
            const ScreenAppBar(title: "Phone Charge"),
            SizedBox(
              height: UiSizes.heightPercent(4),
            ),
            const PhoneChargeTextField(
              hintText: "Add Phone Number",
            ),
            SizedBox(
              height: UiSizes.heightPercent(3),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: AppColors.whiteColor,
                minimumSize: Size(
                  UiSizes.widthPercent(93),
                  UiSizes.heightPercent(7),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Choose Operator",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Colors.black,
                    ),
              ),
            ),
            SizedBox(
              height: UiSizes.heightPercent(5),
            ),
            Text(
              "Service Type",
              style: TextStyle(
                fontSize: UiSizes.widthPercent(4),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: UiSizes.heightPercent(3),
            ),
            Text(
              "Regular",
              style: TextStyle(
                fontSize: UiSizes.widthPercent(4),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: UiSizes.heightPercent(2),
            ),
            Text(
              "Super Charge",
              style: TextStyle(
                fontSize: UiSizes.widthPercent(4),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: UiSizes.heightPercent(6),
            ),
            const ChargeAmountWidgetCard(
              hintText: "Type Charge Amount",
            ),
            const Expanded(child: SizedBox()),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: AppColors.primary1,
                minimumSize: Size(
                  UiSizes.widthPercent(50),
                  UiSizes.heightPercent(6),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PhoneChargePaymentPage()));
              },
              child: Text(
                "Confirm",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            SizedBox(
              height: UiSizes.heightPercent(2),
            ),
          ],
        ),
      ),
    ));
  }
}

class PhoneChargeTextField extends StatelessWidget {
  final String hintText;
  const PhoneChargeTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: UiSizes.widthPercent(93),
        minHeight: UiSizes.heightPercent(7),
      ),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(
          UiSizes.widthPercent(10),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: UiSizes.widthPercent(6),
      ),
      child: Center(
        child: TextField(
          textAlign: TextAlign.center,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: UiSizes.widthPercent(4),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
