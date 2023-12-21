import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SwitchListTile(
            title: const Text("Theme"), value: false, onChanged: (value) {})
      ],
    ));
  }
}
