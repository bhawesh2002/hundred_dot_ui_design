import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';
import 'package:hundred_dot_ui_design/widgets/friends_list_tile.dart';

class CardBody extends StatelessWidget {
  const CardBody({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String> friendList = {
      "Peter Parker": "6453 6531 6862 5422",
      "Simone Simonas": " 7835 3135 3515 3516",
      "Selena Kayle": "6484 2683 6866 4312",
      "Andy Bahamak": "6843 6423 4656 1832",
      "Sthepene Graandnote": "8674 3516 6535 5633",
      "Wanda Maximoff": "8973 5312 3546 8432",
    };
    return Center(
      child: Column(
        children: [
          SizedBox.square(
            dimension: UiSizes.heightPercent(2),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: UiSizes.widthPercent(8)),
            child: Row(
              children: [
                Text(
                  "My Cards",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Expanded(child: SizedBox()),
                const Icon(
                  Icons.edit_outlined,
                ),
                SizedBox.square(
                  dimension: UiSizes.widthPercent(1),
                ),
                const Icon(
                  Icons.add_circle_outline,
                ),
              ],
            ),
          ),
          //Card viewer
          SizedBox(
            height: UiSizes.heightPercent(20),
          ),
          SizedBox.square(
            dimension: UiSizes.heightPercent(1),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: UiSizes.widthPercent(8)),
            child: Row(
              children: [
                Text(
                  "Transfer to",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Expanded(child: SizedBox()),
                const Icon(
                  Icons.edit_outlined,
                ),
                SizedBox.square(
                  dimension: UiSizes.widthPercent(1),
                ),
                const Icon(
                  Icons.add_circle_outline,
                ),
              ],
            ),
          ),
          SizedBox.square(
            dimension: UiSizes.heightPercent(2),
          ),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: friendList.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: UiSizes.widthPercent(5),
                    vertical: UiSizes.heightPercent(1),
                  ),
                  child: FriendListTile(
                    friendName: friendList.keys.elementAt(index),
                    cardNumber: friendList.values.elementAt(index),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
