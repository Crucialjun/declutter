import 'package:declutter/constants/app_assets.dart';
import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  final String title;
  final String assetPath;
  final void Function() onTap;
  const ProfileListTile({
    super.key, required this.title, required this.assetPath, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Image.asset(assetPath),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
