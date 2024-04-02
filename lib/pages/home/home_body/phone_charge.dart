import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
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
              textInputType: TextInputType.phone,
            ),
            SizedBox(
              height: UiSizes.heightPercent(4),
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
              height: UiSizes.heightPercent(6),
            ),
            Text(
              "Service Type",
              style: TextStyle(
                fontSize: UiSizes.widthPercent(4),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: UiSizes.heightPercent(4),
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
              height: UiSizes.heightPercent(8),
            ),
            const PhoneChargeTextField(
              hintText: "Type Charge Amount : \$",
              textInputType: TextInputType.phone,
            ),
            SizedBox(
              height: UiSizes.heightPercent(3),
            ),
            SizedBox(
              width: UiSizes.widthPercent(70),
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.5,
                shrinkWrap: true,
                children: [
                  Center(
                    child: Text(
                      "\$3.00",
                      style: TextStyle(
                        fontSize: UiSizes.widthPercent(4),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "\$5.00",
                      style: TextStyle(
                        fontSize: UiSizes.widthPercent(4),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "\$8.00",
                      style: TextStyle(
                        fontSize: UiSizes.widthPercent(4),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "\$10.00",
                      style: TextStyle(
                        fontSize: UiSizes.widthPercent(4),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "\$15.00",
                      style: TextStyle(
                        fontSize: UiSizes.widthPercent(4),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "\$20.00",
                      style: TextStyle(
                        fontSize: UiSizes.widthPercent(4),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class PhoneChargeTextField extends StatelessWidget {
  final String hintText;
  final TextInputType textInputType;
  const PhoneChargeTextField(
      {super.key, required this.hintText, required this.textInputType});

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
          keyboardType: textInputType,
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
