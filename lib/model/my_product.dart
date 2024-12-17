import 'package:bakery_shop/model/product_item_class.dart';

class MyProduct {
  static List<ProductItemClass> allProducts = [
    ProductItemClass(
      category: ['ALL'],
      name: 'Mousse Dưa Lưới',
      price: '580.000VND',
      image: 'assets/image/product/3.jpg',
    ),
    ProductItemClass(
      category: ['MUST TRY', 'NEW ARRIVAL'],
      name: 'Mousse Dâu Tây',
      price: '550.000VND',
      image: 'assets/image/product/2.jpg',
    ),
    ProductItemClass(
      category: ['ALL', 'POPULAR', 'BEST SELLER'],
      name: 'Mousse Bưởi',
      price: '520.000VND',
      image: 'assets/image/product/4.jpg',
    ),
    ProductItemClass(
      category: ['ALL', 'MUST TRY'],
      name: 'Mousse Vải',
      price: '530.000VND',
      image: 'assets/image/product/1.jpg',
    ),
    ProductItemClass(
      category: ['ALL', 'MUST TRY'],
      name: 'Mousse Xoài',
      price: '530.000VND',
      image: 'assets/image/product/Xoai.jpg',
    ),
  ];
}
