import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/screen_app_bar.dart';

class AccountBalanceFromCard extends StatelessWidget {
  const AccountBalanceFromCard({super.key});

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
                height: UiSizes.widthPercent(6),
              ),
              Text(
                "VISA",
                style: TextStyle(
                  fontSize: UiSizes.widthPercent(12),
                  color: AppColors.primary2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Donnya Hajan",
                style: TextStyle(
                  fontSize: UiSizes.widthPercent(4),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "5282 3456 7890 1280",
                style: TextStyle(
                  fontSize: UiSizes.widthPercent(4),
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: UiSizes.widthPercent(4),
              ),
              Text(
                "\$5,750,20",
                style: TextStyle(
                  fontSize: UiSizes.widthPercent(8),
                  color: AppColors.primary2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: UiSizes.widthPercent(4),
              ),
              Container(
                height: 2,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                height: UiSizes.widthPercent(8),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Detailed Balance:",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: UiSizes.widthPercent(4.5),
                      ),
                ),
              ),
              SizedBox(
                height: UiSizes.widthPercent(4),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Choose Period:",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: UiSizes.widthPercent(4.2),
                      ),
                ),
              ),
              SizedBox(
                height: UiSizes.widthPercent(2),
              ),
              SizedBox(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  childAspectRatio: 2,
                  children: List.generate(
                    6,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(UiSizes.deviceHeight),
                        clipBehavior: Clip.antiAlias,
                        child: Center(
                          child: Text(
                            "1 Week",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: UiSizes.widthPercent(3),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Choose Format:",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: UiSizes.widthPercent(4.2),
                      ),
                ),
              ),
              SizedBox(
                height: UiSizes.widthPercent(4),
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
                  "Download PDF",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontSize: UiSizes.widthPercent(4),
                        color: Colors.black,
                      ),
                ),
              ),
              SizedBox(
                height: UiSizes.widthPercent(4),
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
                  "Download Excel",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontSize: UiSizes.widthPercent(4),
                        color: Colors.black,
                      ),
                ),
              ),
              SizedBox(
                height: UiSizes.heightPercent(4),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.primary1,
                  minimumSize: Size(
                    UiSizes.widthPercent(45),
                    UiSizes.heightPercent(6),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Get File",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
