import 'package:declutter/core/app_assets.dart';
import 'package:declutter/features/cart/presentation/widgets/empty_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: EmptyCartWidget());
  }
}
