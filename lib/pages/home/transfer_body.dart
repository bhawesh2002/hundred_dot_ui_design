import 'package:flutter/material.dart';

class TransferBody extends StatelessWidget {
  const TransferBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Transfer",
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
