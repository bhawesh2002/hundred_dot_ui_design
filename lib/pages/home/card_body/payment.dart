import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/pages/home/card_body.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/screen_app_bar.dart';

class PaymentPage extends StatelessWidget {
  final Friend friend;
  const PaymentPage({super.key, required this.friend});

  @override
  Widget build(BuildContext context) {
    List<dynamic> gridItems = <dynamic>[
      "1",
      "2",
      "3",
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '.',
      '0',
    ];
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
              const ScreenAppBar(title: 'Payment'),
              SizedBox(
                height: UiSizes.heightPercent(3),
              ),
              CircleAvatar(
                radius: UiSizes.widthPercent(15),
              ),
              SizedBox(
                height: UiSizes.heightPercent(3),
              ),
              Text(
                friend.name,
                style: TextStyle(
                  fontSize: UiSizes.widthPercent(4.5),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                friend.cardNo,
                style: TextStyle(
                  fontSize: UiSizes.widthPercent(4),
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: UiSizes.heightPercent(9),
              ),
              Text(
                "\$131,00",
                style: TextStyle(
                  fontSize: UiSizes.widthPercent(7),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Balance 5,750.20",
                style: TextStyle(
                  fontSize: UiSizes.widthPercent(4.5),
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: UiSizes.heightPercent(2),
              ),
              Flexible(
                child: SizedBox(
                  width: UiSizes.widthPercent(85),
                  child: GridView.count(
                    childAspectRatio: 1.5,
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    children: List.generate(
                      12,
                      (index) => GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: index == 11
                              ? const Icon(Icons.backspace_outlined)
                              : Text(
                                  gridItems[index].toString(),
                                  style: TextStyle(
                                    fontSize: UiSizes.widthPercent(4),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: UiSizes.heightPercent(2),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.primary1,
                  minimumSize: Size(
                    UiSizes.widthPercent(50),
                    UiSizes.heightPercent(6),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Confirm",
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
