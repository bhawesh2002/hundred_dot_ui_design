import 'package:flutter/material.dart';

class ScreenAppBar extends StatelessWidget {
  final String title;
  final IconData? actionIcon;
  final VoidCallback? onActionTap;
  const ScreenAppBar(
      {super.key, required this.title, this.actionIcon, this.onActionTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back)),
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        GestureDetector(onTap: onActionTap ?? () {}, child: Icon(actionIcon)),
      ],
    );
  }
}
