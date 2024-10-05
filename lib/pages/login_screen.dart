import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/my_button.dart';
import 'package:flutter_application_2/components/my_text_field.dart';
import 'package:flutter_application_2/components/square_title.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

// text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // signin  method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),

              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

//welcom back,you have been missed!
              Text('Welcome back you have been missed !',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  )),

              const SizedBox(
                height: 25,
              ),

//username textfield

              Mytextfield(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false),

              const SizedBox(
                height: 10,
              ),

//password textfield

              Mytextfield(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true),

              const SizedBox(height: 10),

//forgot password textfield

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

//sign in button
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 50,
              ),

//or continue
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: .5,
                          color: Colors.grey[400],
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text('Or continue with')),
                      Expanded(
                          child: Divider(
                        thickness: .5,
                        color: Colors.grey[400],
                      ))
                    ],
                  )),

              const SizedBox(
                height: 50,
              ),
//google + apple sign in text
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  SquareTitle(
                    imagePath: 'assets/images/google.png',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SquareTitle(
                    imagePath: 'assets/images/apple.png',
                  )
                ],
              )
//not a memmber? register now
            ],
          ),
        )));
  }
}
