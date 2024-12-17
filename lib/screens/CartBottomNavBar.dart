import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        height: 50, // Điều chỉnh chiều cao nếu cần
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total:",
                    style: TextStyle(
                        color: Color.fromARGB(255, 21, 108, 92),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "2.000.000VND", // Sửa lỗi định dạng số
                    style: TextStyle(
                        color: Color.fromARGB(255, 21, 108, 92),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            // SizedBox(height: 10), // Thêm khoảng cách giữa các phần tử
            Flexible(
              child: Container(
                alignment: Alignment.center,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 21, 108, 92),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Check Out",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
