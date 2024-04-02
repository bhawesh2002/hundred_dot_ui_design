import 'package:flutter/material.dart';
import 'package:hundred_dot_ui_design/theme/colors.dart';
import 'package:hundred_dot_ui_design/utilis/ui_sizes.dart';

class GraphCandle extends StatefulWidget {
  final double candleWidth;
  final double balance;
  final double income;
  final double spending;
  final String? tootltip;
  const GraphCandle(
      {super.key,
      required this.candleWidth,
      required this.income,
      required this.spending,
      required this.balance,
      this.tootltip});

  @override
  State<GraphCandle> createState() => _GraphCandleState();
}

class _GraphCandleState extends State<GraphCandle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: UiSizes.widthPercent(2),
      ),
      width: widget.candleWidth,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: widget.balance,
                decoration: BoxDecoration(
                  color: AppColors.primary1.withOpacity(0.1),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(UiSizes.deviceWidth),
                  ),
                ),
              ),
              Container(
                height: widget.income,
                decoration: BoxDecoration(
                  color: AppColors.primary1.withOpacity(0.3),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(UiSizes.deviceWidth),
                  ),
                ),
              ),
              Container(
                height: widget.spending,
                decoration: BoxDecoration(
                  color: AppColors.primary1.withOpacity(0.6),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(UiSizes.deviceWidth),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.tootltip ?? "",
            style: TextStyle(
              fontSize: UiSizes.widthPercent(2.5),
              overflow: TextOverflow.ellipsis,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
