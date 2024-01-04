import 'package:declutter/features/cart/cart_view.dart';
import 'package:declutter/features/home/home_view.dart';
import 'package:declutter/features/profile/presentation/profile_view.dart';
import 'package:declutter/features/search/search_view.dart';
import 'package:flutter/material.dart';

class BottomNavHolderView extends StatelessWidget {
  const BottomNavHolderView({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    List<Widget> pages = const [
      HomeView(),
      SearchView(),
      CartView(),
      ProfileView()
    ];
    return Scaffold(
      body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: pages),
      bottomNavigationBar: NavigationBar(
        destinations: pages.map((e) {
          return const NavigationDestination(
              icon: Icon(Icons.home), label: "Home");
        }).toList(),
        onDestinationSelected: (value) {
          pageController.jumpToPage(value);
        },
      ),
    );
  }
}
