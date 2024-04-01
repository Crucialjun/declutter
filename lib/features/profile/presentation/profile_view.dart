import 'package:declutter/constants/app_assets.dart';
import 'package:declutter/core/bloc/main_bloc.dart';
import 'package:declutter/features/profile/presentation/widgets/profile_list_tile.dart';
import 'package:declutter/utils/widgets/app_name_text.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Please Login to have ultimate access",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.all(20.r),
              child: Row(children: [
                Container(
                  height: 60.r,
                  width: 60.r,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.surface,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.onBackground,
                      width: 3.r,
                    ),
                    image: DecorationImage(
                      image: ExtendedNetworkImageProvider(
                          "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        "Email",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "General",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              ProfileListTile(
                title: "All Orders",
                assetPath: AppAssets.order,
                onTap: () {},
              ),
              ProfileListTile(
                title: "Wishlist",
                assetPath: AppAssets.wishlist,
                onTap: () {},
              ),
              ProfileListTile(
                title: "Viewed Recently",
                assetPath: AppAssets.timeMachine,
                onTap: () {},
              ),
              ProfileListTile(
                title: "Address",
                assetPath: AppAssets.address,
                onTap: () {},
              ),
              Divider(
                thickness: 1.h,
              ),
              SizedBox(height: 12.h),
              Text(
                "Settings",
                style: Theme.of(context).textTheme.titleLarge,
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
              ),
              Divider(
                thickness: 1.h,
              ),
              SizedBox(height: 12.h),
              Center(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.error,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                  onPressed: () {},
                  label: Text(
                    "Login",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.onError),
                  ),
                  icon: Icon(Icons.login,
                      color: Theme.of(context).colorScheme.onError),
                ),
              ),
            ])
          ],
        ));
  }
}
