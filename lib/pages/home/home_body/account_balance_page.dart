import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class AccountBalancePage extends StatelessWidget {
  const AccountBalancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: UiSizes.heightPercent(1),
          horizontal: UiSizes.widthPercent(4),
        ),
        child: Column(
          children: [
            //App Bar
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back)),
                Text(
                  "Account Balance",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
