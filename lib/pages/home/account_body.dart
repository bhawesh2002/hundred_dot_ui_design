import 'package:flutter/material.dart';

class AccountBody extends StatelessWidget {
  const AccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Account",
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
