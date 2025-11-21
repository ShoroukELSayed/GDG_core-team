import 'package:flutter/material.dart';
import 'package:gdg_medical/constants/assets.dart';
import 'package:gdg_medical/screens/cart_empty_screen.dart';
import 'package:gdg_medical/screens/home_screen.dart';
import 'package:gdg_medical/screens/notification_screen.dart';
import 'package:gdg_medical/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomeScreen(),
    const NotificationScreen(),
    const CartEmptyScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) => setState(() => currentIndex = value),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: const Color.fromARGB(105, 9, 28, 63),
          selectedItemColor: const Color.fromARGB(141, 65, 87, 255),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage(Assets.resourceImagesBtnNotification),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                  image: AssetImage(Assets.resourceImagesBtnShoppingCart)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
              ),
              label: '',
            ),
          ]),
    );
  }
}
