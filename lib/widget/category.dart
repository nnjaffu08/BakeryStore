import 'package:bakery_shop/model/my_product.dart';
import 'package:bakery_shop/model/product_item_class.dart';
import 'package:bakery_shop/widget/item.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  List<String> categories = [
    'ALL',
    'BEST SELLER',
    'MUST TRY',
    'NEW ARRIVAL',
    'POPULAR',
  ];
  String selectedCategory = 'ALL';
  List<ProductItemClass> products = MyProduct.allProducts;
  List<ProductItemClass> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts = products; // Hiển thị tất cả sản phẩm ban đầu
  }

  void filterProducts(String categories) {
    setState(() {
      selectedCategory = categories;
      if (categories == 'ALL') {
        filteredProducts = products;
      } else {
        filteredProducts = products.where((product) {
          return product.category.contains(categories);
        }).toList();
      }
      print("Filtered Products: $filteredProducts");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: categories.map((category) {
              return GestureDetector(
                onTap: () {
                  filterProducts(category);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: selectedCategory == category
                          ? Colors.blue
                          : Colors.white,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      category,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Container(
            padding: EdgeInsets.all(8),
            child: ItemWidget(products: filteredProducts),
          ),
        ),
      ],
    );
  }
}
