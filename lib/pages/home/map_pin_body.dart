import 'package:flutter/material.dart';

class MapPinBody extends StatelessWidget {
  const MapPinBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Map",
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
