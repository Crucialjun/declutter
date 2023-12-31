import 'package:declutter/core/app_assets.dart';
import 'package:declutter/utils/widgets/app_name_text.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset(AppAssets.shoppingCart),
          title: const AppNameText(),
        ),
        body: Column(
          children: [
            Visibility(
              visible: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:20 ),
                child: Text(
                  "Please Login to have ultimate access",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ],
        ));
  }
}
