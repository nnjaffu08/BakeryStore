import 'package:bakery_shop/components/logins/login_button.dart';
import 'package:bakery_shop/components/logins/square_tile.dart';
import 'package:bakery_shop/components/logins/text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
   LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();

  final passwordController = TextEditingController();

  bool obscureText=true;
  void togglePasswordVisibility(){
    setState(() {
      obscureText=!obscureText;
    });
  }

  void loginUser(){}
  void signUpUser(){}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFA9E3D7),
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                //logo
                const Icon(
                  Icons.lock,
                  size: 100,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 50,
                ),
          
                Text(
                  'WELCOM!!',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16,fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                MyTextField(
                    controller: userNameController,
                    hintText: 'Username',
                    obscureText: false,
                    prefixIcon: const Icon(Icons.person,color: Colors.black,),
                ),
          
                const SizedBox(height: 25),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: obscureText,
                  onEyeIconPressed: togglePasswordVisibility,
                  prefixIcon: const Icon(Icons.lock,color: Colors.black,),
                  
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                SignInButton(
                  onTap: loginUser,
                  userNameController: userNameController,
                  passwordController: passwordController,
                ),
                

                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'assets/image/ic_login/ic_google_60.png'),
                    SizedBox(width: 25),
                    SquareTile(imagePath: 'assets/image/ic_login/ic_facebook_60.png'),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}