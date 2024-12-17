import 'package:flutter/material.dart';

class FavoriteAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function onBackPress; // Hàm callback

  const FavoriteAppBar(
      {required this.onBackPress}); // Nhận hàm callback từ widget cha

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.teal, // Đổi nền thành màu nổi bật
      title: const Text(
        'Favorites',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          onBackPress(); // Gọi hàm callback để chuyển về tab Home
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert, color: Colors.white),
          onPressed: () {
            // Thêm logic cho nút tìm kiếm (nếu cần)
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
