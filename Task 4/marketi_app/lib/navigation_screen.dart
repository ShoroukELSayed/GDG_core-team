import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/features/cart/ui/screens/cart_screen.dart';
import 'package:marketi_app/features/checkout/ui/screens/success_order_screen.dart';
import 'package:marketi_app/features/home/ui/screens/home_screen.dart';
import 'package:marketi_app/features/search/ui/screens/search_not_found_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const CartScreen(),
    const SuccessOrderScreen(),
    const SearchNotFoundScreen(),
    // FavoriteScreen(),
    // MenuScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.grey,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          const BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),
    );
  }
}
