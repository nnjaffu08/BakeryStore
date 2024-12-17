import 'package:bakery_shop/model/product_item_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<ProductItemClass> _favorites = [];
  List<ProductItemClass> get favorites => _favorites;

  void toggleFavorite(ProductItemClass product) {
    if (_favorites.contains(product)) {
      _favorites.remove(product);
    } else {
      _favorites.add(product);
    }
    notifyListeners();
  }

  bool isFavorite(ProductItemClass product) {
    return _favorites.contains(product);
  }

  static FavoriteProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<FavoriteProvider>(
      context,
      listen: listen,
    );
  }
}
