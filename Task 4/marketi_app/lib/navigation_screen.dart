import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/features/all%20products/ui/screens/all_favorite_screen.dart';
import 'package:marketi_app/features/cart/ui/screens/cart_screen.dart';
import 'package:marketi_app/features/home/ui/screens/home_screen.dart';
import 'package:marketi_app/features/home/ui/screens/side_menu.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key, this.currentIndex});
  final int? currentIndex;

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const CartScreen(),
    const AllFavoriteScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: screens[widget.currentIndex ?? currentIndex],
      endDrawer: const SideMenu(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.currentIndex ?? currentIndex,
        onTap: (index) {
          if (index == 3) {
            _scaffoldKey.currentState!.openEndDrawer();
          } else {
            setState(() {
              currentIndex = index;
            });
          }
        },
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),
    );
  }
}
