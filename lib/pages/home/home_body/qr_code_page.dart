import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/screen_app_bar.dart';

class QRCodePage extends StatelessWidget {
  const QRCodePage({super.key});

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
              const ScreenAppBar(
                title: "Scan To Pay",
                actionIcon: Icons.info_outline,
              ),
              SizedBox(
                height: UiSizes.heightPercent(4),
              ),
              Expanded(
                child: Image.asset(
                  'lib/assets/Images/QR-Code.png',
                  width: UiSizes.widthPercent(50),
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                width: UiSizes.widthPercent(95),
                height: UiSizes.heightPercent(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(UiSizes.widthPercent(8)),
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: UiSizes.widthPercent(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ignore: deprecated_member_use
                    SvgPicture.asset(
                      'lib/assets/icons/ligntning_boult.svg',
                      color: AppColors.primary2,
                      width: UiSizes.widthPercent(5),
                    ),
                    // ignore: deprecated_member_use
                    SvgPicture.asset(
                      'lib/assets/icons/camera.svg',
                      color: AppColors.primary2,
                      width: UiSizes.widthPercent(7),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: UiSizes.widthPercent(45),
                        minHeight: UiSizes.heightPercent(7),
                      ),
                      height: UiSizes.heightPercent(7),
                      decoration: BoxDecoration(
                        color: AppColors.scaffoldBgColor,
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
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Type Number',
                            hintStyle: TextStyle(
                              fontSize: UiSizes.widthPercent(3),
                              color: AppColors.primary2,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: UiSizes.widthPercent(2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
