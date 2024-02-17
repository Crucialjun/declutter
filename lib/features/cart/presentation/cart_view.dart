import 'package:declutter/core/app_assets.dart';
import 'package:declutter/features/cart/presentation/widgets/cart_bottom_checkout.dart';
import 'package:declutter/features/cart/presentation/widgets/empty_cart.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: FancyShimmerImage(
                    imageUrl:
                        "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    boxFit: BoxFit.cover,
                    width: 140.h,
                    height: 140.h,
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text('Product Name',
                              style: Theme.of(context).textTheme.titleMedium),
                        ),
                        Text('Price',
                            style: Theme.of(context).textTheme.titleSmall),
                        Text('Quantity',
                            style: Theme.of(context).textTheme.titleMedium),
                        SizedBox(height: 10.h),
                        OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                color: Theme.of(context).colorScheme.primary),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          label: const Text('Qty : 6'),
                          onPressed: () async {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) => SizedBox(
                                      height: 200.h,
                                      child: Column(
                                        children: [
                                          Text(
                                            'Select Quantity',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium,
                                          ),
                                          SizedBox(height: 10.h),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              IconButton(
                                                icon: const Icon(Icons.remove),
                                                onPressed: () {},
                                              ),
                                              Text('6',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium),
                                              IconButton(
                                                icon: const Icon(Icons.add),
                                                onPressed: () {},
                                              ),
                                            ],
                                          ),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: const Text('Done'))
                                        ],
                                      ),
                                    ));
                          },
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.delete_outline),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      bottomSheet: const CartBottomCheckout(),
    );
  }
}
