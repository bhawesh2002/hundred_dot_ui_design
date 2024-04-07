import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class ChargeAmountWidgetCard extends StatelessWidget {
  final String hintText;
  const ChargeAmountWidgetCard({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    List<String> amount = ["3.00", "5.00", "8.00", "10.00", "15.00", "20.00"];
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(UiSizes.widthPercent(3)),
      child: SizedBox(
        width: UiSizes.widthPercent(92),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: UiSizes.widthPercent(10),
              vertical: UiSizes.heightPercent(1)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "$hintText: \$",
                    hintStyle: TextStyle(
                      fontSize: UiSizes.widthPercent(3.5),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Container(
                width: UiSizes.widthPercent(70),
                height: 1,
                color: Colors.grey.shade300,
              ),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                childAspectRatio: 1.5,
                children: List.generate(
                  6,
                  (index) => Center(
                    child: Text(
                      "\$${amount[index]}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
