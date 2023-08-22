import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeeExtra;
  final String coffeePrice;

  CoffeeTile({
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeeExtra,
    required this.coffeePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFF0A1B23),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // coffee image
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                  child: Image.asset(coffeeImagePath),
              ),


              // coffee name
               Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        coffeeName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  ],
                ),
              ),
               Text(
                coffeeExtra,
                style: const TextStyle(
                    color: Color(0xFF707072),
                    fontWeight: FontWeight.normal
                ),
              ),
              const SizedBox(height: 15),

              // price
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\R' + coffeePrice,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFB07209),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                            Icons.add,
                            color: Colors.white))
                  ],
              ),
               )
            ],
          ),
        ),
      ),
    );
  }
}
