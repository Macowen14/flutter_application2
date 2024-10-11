import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/my_button.dart';
import 'package:flutter_application_2/components/my_text_field.dart';
import 'package:flutter_application_2/components/square_title.dart';
import 'package:flutter_application_2/pages/sign_up.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  // Text editing controllers for username and password fields
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign-in method (to be implemented with authentication logic)
  void signUserIn() {
    // Add sign-in logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], // Set background color for the screen
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
                horizontal: 20), // Add padding for better layout
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center the content
              children: [
                const SizedBox(height: 50), // Space from top

                // App logo/icon
                const Icon(
                  Icons.lock,
                  size: 100,
                  color: Colors.black, // Set icon color
                ),

                const SizedBox(height: 50),

                // Welcome text
                Text(
                  'Welcome back, you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                    fontWeight: FontWeight.bold, // Emphasize welcome text
                  ),
                ),

                const SizedBox(height: 30),

                // Username text field
                Mytextfield(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 15),

                // Password text field
                Mytextfield(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true, // Hide password
                ),

                const SizedBox(height: 10),

                // "Forgot password" text
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // "Don't have an account?" text with sign-up button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Sign-in button
                MyButton(onTap: signUserIn),

                const SizedBox(height: 30),

                // Divider with "Or continue with"
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Or continue with'),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                // Google and Apple sign-in options
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTitle(imagePath: 'assets/images/google.png'),
                    SizedBox(width: 10),
                    SquareTitle(imagePath: 'assets/images/apple.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
