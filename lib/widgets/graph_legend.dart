import 'package:flutter/material.dart';

class GraphLegend extends StatelessWidget {
  final String label;
  final Color color;
  const GraphLegend({super.key, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          CircleAvatar(
            radius: 7,
            backgroundColor: color,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
