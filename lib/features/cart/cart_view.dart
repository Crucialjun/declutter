import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'CartView',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    ));
  }
}