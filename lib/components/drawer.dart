import 'package:flutter/material.dart';
import 'my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  final void Function()? onSignOut;
  const MyDrawer({
    super.key,
    required this.onSignOut,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF4D4526),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // header
              DrawerHeader(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 64,
                  )),
              // divider
              Container(
                height: 10,
                color: Colors.blueGrey,
              ),
              SizedBox(height: 10),
              // Payment
              MyListTile(
                icon: Icons.payment_rounded,
                onTap: () {},
                text: 'PAYMENTS',
              ),
              // support
              MyListTile(
                icon: Icons.support_agent_sharp,
                onTap: () {},
                text: 'SUPPORT',
              ),
              // profile
              MyListTile(
                icon: Icons.person,
                onTap: (){},
                text: 'PROFILE',
              ),
              // About
              MyListTile(
                icon: Icons.info,
                onTap: () {},
                text: 'ABOUT',
              ),
            ],
          ),
          // logout
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
              icon: Icons.logout,
              onTap: onSignOut,
              text: 'LOGOUT',
            ),
          ),
        ],
      ),
    );
  }
}
