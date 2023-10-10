import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/View/Favorite/favorite_view.dart';
import 'package:furniture_shopping_app/View/Home/home_view.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  int currentIndex = 0;

  List<Widget> ScreenList = [
    const HomeView(),
    const FavoriteView(),
    const HomeView(),
    const FavoriteView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        // selectedColorOpacity: 01,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: const Color(0xFF6F6F6F),
        selectedItemColor: Colors.orange,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_outlined, color: Colors.orange),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            activeIcon: Icon(Icons.storefront_outlined, color: Colors.orange),
            label: 'Fav Stores',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon:
                Icon(Icons.shopping_cart_outlined, color: Colors.orange),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp),
            activeIcon: Icon(Icons.person_outline_sharp, color: Colors.orange),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
