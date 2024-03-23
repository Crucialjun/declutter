import 'package:declutter/core/app_assets.dart';
import 'package:declutter/core/bloc/main_bloc.dart';
import 'package:declutter/utils/widgets/app_name_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: Image.asset(AppAssets.shoppingCart),
          ),
          title: const AppNameText(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Home View",
              style: TextStyle(fontSize: 50, color: Colors.red),
            ),
            BlocBuilder<MainBloc, MainState>(
              builder: (context, state) {
                return SwitchListTile(
                    title: Text(state.isDarkTheme ? 'Dark' : 'Light'),
                    value: state.isDarkTheme,
                    onChanged: (value) {
                      context.read<MainBloc>().add(SetDarkTheme(value));
                    });
              },
            )
          ],
        ));
  }
}
