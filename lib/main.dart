import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'index_page.dart';
import 'map_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whiskr',
      initialRoute: '/login', // Set the initial route to the login page
      routes: {
        '/login': (context) => const LoginPage(title: 'Login Page',), // Route for login page
        '/home': (context) => const HomePage(title: 'Whiskr'), // Route for home page
        '/index': (context) => const IndexPage(title: 'Index Page',), // Route for index page
        '/map': (context) => const MapPage(title: 'Map Page',), // Route for map page
      },
    );
  }
}
