import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:yoga/feature/yoga/presentaion/pages/home/home.dart';
import 'package:yoga/feature/yoga/presentaion/pages/screen/complete.dart';
import 'package:yoga/feature/yoga/presentaion/pages/screen/favourite.dart';
import 'package:yoga/feature/yoga/presentaion/styles/colors.dart';

class NavigationBarBottom extends StatefulWidget {
  const NavigationBarBottom({Key? key}) : super(key: key);

  @override
  State<NavigationBarBottom> createState() => _NavigationBarBottomState();
}

class _NavigationBarBottomState extends State<NavigationBarBottom> {
  int _selectedIndex = 0;
  final screens = [
    const Home(),
    const Favourite(),
    const Complete()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[_selectedIndex],
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: white,
          selectedIndex: _selectedIndex,
          showElevation: true,
          onItemSelected: (index) {
            setState(
                  () {
                _selectedIndex = index;
              },
            );
          },
          items: [
            BottomNavyBarItem(
                icon: const Icon(Icons.circle_outlined),
                title:  const Text('Home'),
                activeColor: purple,
                inactiveColor: black),
            BottomNavyBarItem(
                icon: const Icon(Icons.favorite_border),
                title: const Text('Favourite'),
                activeColor: purple,
                inactiveColor: black),
            BottomNavyBarItem(
                icon: const Icon(Icons.circle_outlined),
                title:  const Text(''),
                activeColor: purple,
                inactiveColor: black),
          ],
        ));
  }
}
