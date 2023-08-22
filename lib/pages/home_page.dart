import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/components/drawer.dart';
import 'package:login/util/coffee_tile.dart';
import 'package:login/util/coffee_type.dart';

import '../components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  // list of coffee types
  final List coffeeType = [
    // [ coffee Type, isSelected ]
    [
      'Cappuccino',
      true,
    ],
    [
      'Espresso',
      false,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Machi atto',
      false,
    ],
  ];

  // user tapped on coffee type
  void coffeeTypeSelected(int index) {
    setState(() {

      // this for loop makes every selection false
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF02141C),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: MyDrawer(
        onSignOut: signUserOut,
      ),
      bottomNavigationBar: BottomNavBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Find the best coffee for you",
              style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 55),
            ),
          ),

          const SizedBox(height: 25),
          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              cursorColor: Color(0xFF4D4526),
              style: const TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  hintText: ('Find you coffee ...'),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF4D4526)),
                      borderRadius: BorderRadius.circular(20)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF4D4526)),
                      borderRadius: BorderRadius.circular(20)),
                  prefixIconColor: Color(0xFF4D4526),
                  hintStyle: TextStyle(color: Colors.grey[700])),
            ),
          ),

          const SizedBox(height: 25),

          // horizontal listview coffee type
          Container(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeType.length,
              itemBuilder: (context, index) {
                return CoffeeType(
                  coffeeType: coffeeType[index][0],
                  isSelected: coffeeType[index][1],
                  onTap: () {
                    coffeeTypeSelected(index);
                  },
                );
              },
            ),
          ),

          const SizedBox(height: 25),
          // horizontal listview coffee tile
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:  [
                CoffeeTile(
                  coffeeImagePath: 'lib/images/cappuccino.jpg',
                  coffeeName: 'Cappuccino',
                  coffeeExtra: 'With Oat Milk',
                  coffeePrice: ' 43.00',
                ),
                CoffeeTile(
                  coffeeImagePath: 'lib/images/expresso.jpg',
                  coffeeName: 'Espresso',
                  coffeeExtra: 'With Chocolate',
                  coffeePrice: ' 39.00',
                ),
                CoffeeTile(
                  coffeeImagePath: 'lib/images/latte.jpg',
                  coffeeName: 'Latte',
                  coffeeExtra: 'With Almond Milk',
                  coffeePrice: ' 44.10',
                ),
                CoffeeTile(
                  coffeeImagePath: 'lib/images/machiatto.jpg',
                  coffeeName: 'Machi atto',
                  coffeeExtra: 'With Oat Milk',
                  coffeePrice: ' 49.00',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
