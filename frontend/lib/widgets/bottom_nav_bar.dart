import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(icon: SizedBox(width: 24,height: 24,child: Image.asset('assets/images/home_icon.png'), ),label: 'Home',),
        BottomNavigationBarItem(icon: SizedBox(width: 24,height: 24,child: Image.asset('assets/images/find_icon.png'), ), label: 'Find',),
        BottomNavigationBarItem(icon: SizedBox(width: 24,height: 24,child: Image.asset('assets/images/library_icon.png'),),label: 'Lib', ),
        BottomNavigationBarItem(icon: SizedBox(width: 24,height: 24,child: Image.asset('assets/images/account_icon.png'),),label: 'Acc',),
      ],
    );
  }
}