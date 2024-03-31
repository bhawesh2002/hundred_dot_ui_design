import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  const CardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Credit Card",
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
