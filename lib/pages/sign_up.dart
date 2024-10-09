import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/my_button.dart';
import 'package:flutter_application_2/components/my_text_field.dart';
import 'package:flutter_application_2/components/square_title.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

// text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

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
              const SizedBox(height: 30),

              //logo
              const Icon(
                Icons.person,
                size: 100,
              ),

              const SizedBox(height: 25),

//welcom back,you have been missed!
              Text("let's create you an account!",
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
                height: 15,
              ),

//password textfield

              Mytextfield(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true),

              const SizedBox(height: 15),

// confirm password textfield

              Mytextfield(
                  controller: passwordController,
                  hintText: 'Confirm Password',
                  obscureText: true),

              const SizedBox(height: 15),

//email textfield
              Mytextfield(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false),

//already have an account

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text('Already have an account?',
                            style: TextStyle(color: Colors.blue))),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

//sign up button
              Center(
                child: Container(
                  width: 200, // Increase width
                  height: 40, // Increase height
                  decoration: BoxDecoration(
                    color: Colors.blue, // Background color
                    borderRadius:
                        BorderRadius.circular(30.0), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: const Offset(
                            0, 4), // Shadow position for a soft lift effect
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.transparent, // Transparent background
                      shadowColor: Colors.transparent, // Remove default shadow
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0), // Adjust padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30.0), // Match border radius
                      ),
                    ),
                    onPressed: () {
                      // Action when pressed
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 15, // Larger text size
                        color: Colors.white, // Text color
                        fontWeight: FontWeight.w600, // Semi-bold text
                        letterSpacing:
                            1.2, // Slightly increased letter spacing for readability
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 18,
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
                height: 20,
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
