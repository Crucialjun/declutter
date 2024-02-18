import 'package:declutter/features/cart/presentation/cart_view.dart';
import 'package:declutter/features/home/home_view.dart';
import 'package:declutter/features/profile/presentation/profile_view.dart';
import 'package:declutter/features/search/presentattion/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class BottomNavHolderView extends StatefulWidget {
  const BottomNavHolderView({super.key});

  @override
  State<BottomNavHolderView> createState() => _BottomNavHolderViewState();
}

class _BottomNavHolderViewState extends State<BottomNavHolderView> {
  int selectedIndex = 0;
  List<Widget> pages = const [
    HomeView(),
    SearchView(),
    CartView(),
    ProfileView()
  ];
  @override
  Widget build(BuildContext context) {
    PageController? pageController =
        PageController(initialPage: 0, keepPage: true);
    return Scaffold(
      body: PageView(
          onPageChanged: (value) {
            selectedIndex = value;
          },
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: pages),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        height: kBottomNavigationBarHeight,
        elevation: 2,
        selectedIndex: selectedIndex,
        destinations: const [
          NavigationDestination(
              selectedIcon: Icon(IconlyBold.home),
              icon: Icon(IconlyLight.home),
              label: "Home"),
          NavigationDestination(
              selectedIcon: Icon(IconlyBold.search),
              icon: Icon(IconlyLight.search),
              label: "Search"),
          NavigationDestination(
              selectedIcon: Icon(IconlyBold.bag2),
              icon: Icon(IconlyLight.bag2),
              label: "Cart"),
          NavigationDestination(
              selectedIcon: Icon(IconlyBold.profile),
              icon: Icon(IconlyLight.profile),
              label: "Profile"),
        ],
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
          pageController.jumpToPage(value);
        },
      ),
    );
  }
}
