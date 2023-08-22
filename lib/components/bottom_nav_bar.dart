import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 17.0),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Color(0xFF4D4526),
          tabActiveBorder: Border.all(color: Color(0xFF4D4526)),
          tabs: const [
        // home
        GButton(
          icon: Icons.home,
          text: 'Home',
          iconColor: Colors.grey,
        ),
        // cart
        GButton(
          icon: Icons.card_travel_rounded,
          text: 'Cart',
          iconColor: Colors.grey,
        ),
        // notification
        GButton(
          icon: Icons.notifications,
          text: 'Notification',
          iconColor: Colors.grey,
        ),
      ]),
    );
  }
}
