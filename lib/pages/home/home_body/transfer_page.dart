import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/screen_app_bar.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

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
              const ScreenAppBar(title: 'Transfer'),
              SizedBox(
                height: UiSizes.heightPercent(6),
              ),
              Container(
                width: UiSizes.widthPercent(95),
                height: UiSizes.heightPercent(80),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(UiSizes.widthPercent(8)),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: UiSizes.heightPercent(6),
                  horizontal: UiSizes.widthPercent(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Thank you!\nPayment Confirmed",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontSize: UiSizes.widthPercent(4.5),
                          ),
                    ),
                    Icon(
                      Icons.check_circle_outline_rounded,
                      color: AppColors.additionalGreen,
                      size: UiSizes.widthPercent(15),
                    ),
                    SizedBox(
                      height: UiSizes.heightPercent(4),
                    ),
                    Container(
                      height: 2,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(
                      height: UiSizes.heightPercent(4),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Details:",
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: UiSizes.widthPercent(4.5),
                                ),
                      ),
                    ),
                    SizedBox(
                      height: UiSizes.heightPercent(2),
                    ),
                    SizedBox(
                      height: UiSizes.heightPercent(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Payment ID",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const Expanded(child: SizedBox()),
                              SizedBox(
                                width: UiSizes.widthPercent(28),
                                child: Text(
                                  "3376806548263",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Amount",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const Expanded(child: SizedBox()),
                              SizedBox(
                                width: UiSizes.widthPercent(28),
                                child: Text(
                                  "\$1650.00",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Payed Form",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const Expanded(child: SizedBox()),
                              SizedBox(
                                width: UiSizes.widthPercent(28),
                                child: Text(
                                  "5682 3456\n7890 1289",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Payed to",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const Expanded(child: SizedBox()),
                              SizedBox(
                                width: UiSizes.widthPercent(28),
                                child: Text(
                                  "Bolena Kyle",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Payed on",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const Expanded(child: SizedBox()),
                              SizedBox(
                                width: UiSizes.widthPercent(28),
                                child: Text(
                                  "October 22\n10:17 AM",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Text(
                      "VISA",
                      style: TextStyle(
                        fontSize: UiSizes.widthPercent(10),
                        color: AppColors.primary2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          Text(
                            "100",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontSize: UiSizes.widthPercent(6)),
                          ),
                          Text(
                            "Time for Transaction",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
