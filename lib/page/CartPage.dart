import 'package:bakery_shop/screens/CartBottomNavBar.dart';
import 'package:bakery_shop/widget/CartItemSamples.dart';
import 'package:flutter/material.dart';
import 'package:bakery_shop/screens/CartAppBar.dart';

class Cartpage extends StatelessWidget {
  final VoidCallback onBackPress;

  const Cartpage({Key? key, required this.onBackPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(
            onBackPress: () {
              onBackPress(); // Quay lại tab Home
            },
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CartItemSamples(),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 188, 233, 225),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.teal,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Add Coupon Code",
                            style: TextStyle(
                              color: Color.fromARGB(255, 244, 145, 25),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Thêm khoảng trống để tránh tràn
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
