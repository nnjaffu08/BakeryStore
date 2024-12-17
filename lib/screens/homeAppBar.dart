import 'package:flutter/material.dart';

class HomeAppBar_Screens extends StatelessWidget {
  const HomeAppBar_Screens({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xF7E5A7).withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: const Icon(
              Icons.sort,
              size: 30,
              color: Colors.black,
            ),
          ),
          const Text(
            "Bakery Shop",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              textBaseline: TextBaseline.alphabetic,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xF7E5A7).withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: const Icon(
              Icons.notifications,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
