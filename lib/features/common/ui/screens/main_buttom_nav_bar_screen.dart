import 'package:ecommerce/features/categories/ui/screens/category_list_screen.dart';
import 'package:ecommerce/features/common/controllers/main_bottom_nav_bar_controller.dart';
import 'package:ecommerce/features/home/ui/screens/home_screen.dart';
import 'package:ecommerce/features/wishlist/ui/screens/wish_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MainButtomNavBarScreen extends StatefulWidget {
  const MainButtomNavBarScreen({super.key});

  static const String name = '/main_nav_bar_screen';

  @override
  State<MainButtomNavBarScreen> createState() => _MainButtomNavBarScreenState();
}

class _MainButtomNavBarScreenState extends State<MainButtomNavBarScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const CategoryListScreen(),
    const HomeScreen(),
    const WishListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MainBottomNavBarController>(
        builder: (controller) {
          return _screens[controller.selectedIndex];
        },
      ),
      bottomNavigationBar: GetBuilder<MainBottomNavBarController>(
        builder: (controller) {
          return NavigationBar(
            selectedIndex: controller.selectedIndex,
            onDestinationSelected: controller.changeIndex,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                icon: Icon(Icons.category),
                label: 'Category',
              ),
              NavigationDestination(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              NavigationDestination(
                icon: Icon(Icons.favorite_border),
                label: 'Wishlist',
              ),
            ],
          );
        },
      ),
    );
  }
}
