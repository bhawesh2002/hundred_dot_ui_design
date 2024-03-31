import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hundred_dot_ui_design/pages/home/account_body.dart';
import 'package:hundred_dot_ui_design/pages/home/card_body.dart';
import 'package:hundred_dot_ui_design/pages/home/home_body.dart';
import 'package:hundred_dot_ui_design/pages/home/map_pin_body.dart';
import 'package:hundred_dot_ui_design/pages/home/transfer_body.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<Widget, String> bottomNavItems = {
    const HomeBody(): 'lib/assets/icons/home.svg',
    const AccountBody(): 'lib/assets/icons/info.svg',
    const CardBody(): 'lib/assets/icons/credit_card.svg',
    const TransferBody(): 'lib/assets/icons/transfer.svg',
    const MapPinBody(): 'lib/assets/icons/location_pin.svg'
  };
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 244, 244),
        body: bottomNavItems.keys.elementAt(selectedIndex),
        bottomNavigationBar: Container(
          height: UiSizes.heightPercent(8),
          margin: EdgeInsets.symmetric(
              horizontal: UiSizes.widthPercent(5),
              vertical: UiSizes.heightPercent(2)),
          padding: EdgeInsets.symmetric(
            horizontal: UiSizes.widthPercent(10),
          ),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(
              UiSizes.widthPercent(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              bottomNavItems.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });

                  debugPrint(
                      "Selected body: ${bottomNavItems.keys.elementAt(index).toString()}");
                },
                child: SizedBox.square(
                  dimension: 22,
                  child: SvgPicture.asset(
                    bottomNavItems.values.elementAt(index),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
