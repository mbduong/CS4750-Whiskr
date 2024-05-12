import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo widget (you can replace this with your logo)
              Image.asset(
                'assets/logo_transparent.png', // Replace 'your_logo.png' with your logo asset path
                width: 500,
                // height: 500,
              ),
              // const SizedBox(height: 10), // Add some space between the app name and the buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Login button
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the home screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage(title: 'Home Page')),
                      );
                    },
                    child: const Text('Find your furever love!'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


