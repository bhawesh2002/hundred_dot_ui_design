import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class MapPinBody extends StatelessWidget {
  const MapPinBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox.square(
            dimension: UiSizes.heightPercent(2),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: UiSizes.widthPercent(8)),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Nearby Banks",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(
            height: UiSizes.heightPercent(2),
          ),
          //Search text field
          Container(
            width: UiSizes.widthPercent(95),
            height: UiSizes.heightPercent(6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(UiSizes.deviceWidth),
              border: Border.all(
                width: 2,
                color: Colors.grey.shade300,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: UiSizes.widthPercent(6)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'lib/assets/icons/search.svg',
                  width: UiSizes.widthPercent(5),
                  height: UiSizes.widthPercent(5),
                  // ignore: deprecated_member_use
                  color: AppColors.primary2,
                ),
                SizedBox(
                  width: UiSizes.widthPercent(5),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search the Area",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: UiSizes.heightPercent(2),
                horizontal: UiSizes.widthPercent(3),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  UiSizes.widthPercent(8),
                ),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.shade400,
                ),
              ),
              // TODO: Implement map UI,
            ),
          ),
        ],
      ),
    );
  }
}
