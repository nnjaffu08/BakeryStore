import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  final Function onBackPress; // Hàm callback

  CartAppBar({required this.onBackPress}); // Nhận hàm callback từ widget cha

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal, // Đổi nền thành màu nổi bật
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Căn đều khoảng cách
        children: [
          InkWell(
            onTap: () {
              onBackPress(); // Gọi hàm callback để chuyển về tab Home
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white, // Màu biểu tượng dễ nhìn
            ),
          ),
          const Text(
            "Cart",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: () {
              // Thêm logic cho nút tìm kiếm (nếu cần)
            },
            child: const Icon(
              Icons.more_vert,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
