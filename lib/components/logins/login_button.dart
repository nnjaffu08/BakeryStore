import 'package:bakery_shop/page/sign_up_page.dart';
import 'package:bakery_shop/page/view_page.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final Function()? onTap;
  final TextEditingController userNameController;
  final TextEditingController passwordController;
  const SignInButton(
      {super.key,
      this.onTap,
      required this.userNameController,
      required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            String user = userNameController.text;
            String pass = passwordController.text;
            if (user.isEmpty || pass.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Vui lòng nhập tên và mật khẩu')),
              );
              return;
            } else if (user == 'admin' && pass == '123') {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Login Success')));
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const ViewPage()));
            } else {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Login Failed')));
            }
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 35),
            height: 60,
            width: MediaQuery.of(context).size.width / 2,
            decoration: const BoxDecoration(
              color: Color(0xFFD89F68),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(55),
                bottomRight: Radius.circular(55),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFD89F68),
                  blurRadius: 1.0,
                  offset: Offset(2.6, 2.6),
                ),
              ],
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.login,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()));
          },
           child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 35),
            height: 60,
            width: 130,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(55),
                bottomRight: Radius.circular(55),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFD89F68),
                  blurRadius: 1.0,
                  offset: Offset(2.6, 2.6),
                ),
              ],
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
               
              ],
            ),
            
          ),
        )
      ],
    );
  }
}
