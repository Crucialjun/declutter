import 'package:declutter/core/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50.h),
          SvgPicture.asset(
            AppAssets.emptyCart,
            height: 250.h,
          ),
          Text('Whoops',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.error, fontSize: 40.sp)),
          SizedBox(height: 20.h),
          Text('Your cart is empty',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.error,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600)),
          SizedBox(height: 20.h),
          Text(
              'Looks like your cart is empty \n Add Something to make me happy',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.error,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400)),
          SizedBox(height: 30.h),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  padding: EdgeInsets.all(20.r)),
              child: Text(
                'Shop Now',
                style: TextStyle(
                  fontSize: 22.sp,
                ),
              ))
        ],
      ),
    ));
  }
}
