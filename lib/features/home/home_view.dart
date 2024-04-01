import 'package:card_swiper/card_swiper.dart';
import 'package:declutter/constants/app_assets.dart';
import 'package:declutter/core/bloc/main_bloc.dart';
import 'package:declutter/features/home/presentation/widgets/latest_arrival_products_widgets.dart';
import 'package:declutter/utils/widgets/app_name_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List bannerImages = [AppAssets.banner1, AppAssets.banner2];
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: Image.asset(AppAssets.shoppingCart),
          ),
          title: const AppNameText(),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 166.h,
                child: Swiper(
                  itemCount: bannerImages.length,
                  autoplay: true,
                  pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                      color: Colors.white,
                      activeColor: Colors.red,
                    ),
                  ),
                  itemBuilder: (context, index) {
                    return Image.asset(bannerImages[index]);
                  },
                ),
              ),
              SizedBox(height: 18.h),
              Text("Latest Arrival",
                  style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: 12.h),
              SizedBox(
                height: 138.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const LatestArrivalProductsWidget();
                    }),
              )
            ],
          ),
        ));
  }
}
