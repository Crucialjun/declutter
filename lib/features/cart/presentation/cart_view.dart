import 'package:declutter/core/app_assets.dart';
import 'package:declutter/features/cart/presentation/widgets/empty_cart.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.delete_outline,
              color: Theme.of(context).colorScheme.error,
            ),
            onPressed: () {},
          ),
        ],
        leading: Image.asset(AppAssets.shoppingCart),
        title: const Text('Cart(5)'),
      ),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return Row(
            children: [
              FancyShimmerImage(
                imageUrl:
                    "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                boxFit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Product Name',
                      style: Theme.of(context).textTheme.titleMedium),
                  Text('Price', style: Theme.of(context).textTheme.titleMedium),
                  Text('Quantity',
                      style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
