import 'package:bakery_shop/model/product_item_class.dart';
import 'package:bakery_shop/model/total_details.dart';
import 'package:bakery_shop/widget/available_size.dart';
import 'package:flutter/material.dart';

class DeatailsScreen extends StatelessWidget {
  final ProductItemClass product;
  const DeatailsScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 220,
                height: 200,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 152, 180)),
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40.0),
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 400,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.name.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      product.price,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                for (int i = 0; i < product.category.length; i++)
                  Text(
                    product.category[i],
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Size",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    AvailableSize(size: "14cm"),
                    AvailableSize(size: "16cm"),
                    AvailableSize(size: "18cm"),
                  ],
                ),
                SizedBox(height: 8.0),
                
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:TotalDetails()
    );
  }
}
