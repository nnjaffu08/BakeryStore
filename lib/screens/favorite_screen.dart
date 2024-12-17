import 'package:bakery_shop/providers/favorite_provider.dart';
import 'package:bakery_shop/screens/FavoriteAppBar.dart'; // Import FavoriteAppBar
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bakery_shop/page/deatails_screen.dart'; // Import DetailsScreen

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  void _navigateBack() {
    // Hàm callback để quay lại tab Home
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    } else {
      // Hiển thị thông báo hoặc thực hiện hành động khác
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No previous screen to go back to.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final favoriteList = provider.favorites;

    return Scaffold(
      appBar: FavoriteAppBar(
        onBackPress: _navigateBack, // Truyền hàm callback
      ),
      body: favoriteList.isEmpty
          ? Center(
              child: Text(
                'No favorites yet!',
                style: TextStyle(fontSize: 20),
              ),
            )
          : ListView.builder(
              itemCount: favoriteList.length,
              itemBuilder: (context, index) {
                final product = favoriteList[index];
                return ListTile(
                  leading: Image.asset(
                    product.image,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    product.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    product.price,
                    style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 37, 88, 129),
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle_outline, color: Colors.red),
                    onPressed: () {
                      provider.toggleFavorite(product);
                    },
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DeatailsScreen(product: product),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
