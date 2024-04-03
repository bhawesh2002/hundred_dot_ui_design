import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/screen_app_bar.dart';

class PhoneChargePaymentPage extends StatelessWidget {
  const PhoneChargePaymentPage({super.key});

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
              const ScreenAppBar(title: "Payment"),
              SizedBox(
                height: UiSizes.heightPercent(10),
              ),
              Text(
                "\$ 16.00",
                style: TextStyle(
                  fontSize: UiSizes.widthPercent(8),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "+1 785 624 9690",
                style: TextStyle(
                  fontSize: UiSizes.widthPercent(4.5),
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: UiSizes.heightPercent(10),
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
                  "Choose Your Goal",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontSize: UiSizes.widthPercent(4),
                        color: Colors.black,
                      ),
                ),
              ),
              SizedBox(
                height: UiSizes.heightPercent(2),
              ),
              Container(
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
                      hintText: "Enter Password",
                      hintStyle: TextStyle(
                        fontSize: UiSizes.widthPercent(3.8),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
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
      ),
    );
  }
}
