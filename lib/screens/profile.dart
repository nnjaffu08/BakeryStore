import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.teal, // Màu teal cho AppBar
      ),
      body: Container(
        color: Colors.teal[50], // Màu nền teal nhạt cho toàn bộ ListView
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/image/default_avatar.png'),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
              initialValue: 'Your Username',
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.teal[700]?.withOpacity(0.1),
              child: ListTile(
                leading: Icon(Icons.color_lens, color: Colors.teal[700]),
                title: Text('Change Theme',
                    style: TextStyle(color: Colors.teal[900])),
                onTap: () {
                  // Thêm logic để thay đổi chủ đề
                },
              ),
            ),
            Divider(color: Colors.teal[700]),
            Container(
              color: Colors.teal[600]?.withOpacity(0.1),
              child: ListTile(
                leading: Icon(Icons.privacy_tip, color: Colors.blue),
                title: Text('Privacy', style: TextStyle(color: Colors.blue)),
                onTap: () {
                  // Thêm logic về quyền riêng tư
                },
              ),
            ),
            Divider(color: Colors.teal[600]),
            Container(
              color: Colors.teal[500]?.withOpacity(0.1),
              child: ListTile(
                leading: Icon(Icons.info, color: Colors.orange),
                title: Text('About', style: TextStyle(color: Colors.orange)),
                onTap: () {
                  // Thêm logic hiển thị thông tin về ứng dụng
                },
              ),
            ),
            Divider(color: Colors.teal[500]),
            Container(
              color: Colors.teal[400]?.withOpacity(0.1),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.red[400]),
                title: Text('Logout', style: TextStyle(color: Colors.red[400])),
                onTap: () {
                  // Thêm logic để đăng xuất
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
