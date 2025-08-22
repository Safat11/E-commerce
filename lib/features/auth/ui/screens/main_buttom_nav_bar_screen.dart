import 'package:ecommerce/features/home/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainButtomNavBarScreen extends StatefulWidget {
  const MainButtomNavBarScreen({super.key});

  static const String name = '/main_nav_bar_screen';

  @override
  State<MainButtomNavBarScreen> createState() => _MainButtomNavBarScreenState();
}

class _MainButtomNavBarScreenState extends State<MainButtomNavBarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          _selectedIndex = index;
          setState(() {});
        },
        destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.category), label: 'Category'),
        NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        NavigationDestination(icon: Icon(Icons.favorite_border), label: 'Wishlist'),
      ]
      ),
    );
  }
}