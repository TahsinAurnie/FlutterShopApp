import 'package:flutter/material.dart';
import '../const/AppColors.dart';
import 'package:flutter_ecommerce_app7/ui/bottom_nav_pages/cart.dart';
import 'package:flutter_ecommerce_app7/ui/bottom_nav_pages/favourites.dart';
import 'package:flutter_ecommerce_app7/ui/bottom_nav_pages/home.dart';
import 'package:flutter_ecommerce_app7/ui/bottom_nav_pages/profile.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [const Home(), Favourite(), Cart(), Profile()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Shoppers",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          backgroundColor: Colors.white,
          selectedItemColor: AppColors.deepOrange,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          selectedLabelStyle:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text("Favourite"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              title: Text("Cart"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
            )
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: _pages[_currentIndex]);
  }
}
