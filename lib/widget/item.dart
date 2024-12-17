import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bakery_shop/model/product_item_class.dart';
import 'package:bakery_shop/page/deatails_screen.dart';
import 'package:bakery_shop/providers/favorite_provider.dart';

class ItemWidget extends StatefulWidget {
  final List<ProductItemClass> products;
  const ItemWidget({
    super.key,
    required this.products,
  });

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    return GridView.builder(
      itemCount:
          widget.products.length, // Đếm số lượng sản phẩm trong danh sách
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.68,
      ),
      itemBuilder: (context, index) {
        // Lấy sản phẩm tại index từ danh sách
        final product = widget.products[index];
        return Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      provider.toggleFavorite(product);
                    },
                    child: Icon(
                      provider.isFavorite(product)
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: provider.isFavorite(product) ? Colors.red : null,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeatailsScreen(product: product),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    product.image,
                    width: 120,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.center,
                child: Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        '${product.price}',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(Icons.shopping_cart_checkout),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
