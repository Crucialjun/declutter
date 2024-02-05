import 'package:declutter/core/app_assets.dart';
import 'package:declutter/features/cart/presentation/widgets/empty_cart.dart';
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
             
            ],
          );
        },
      ),
    );
  }
}
