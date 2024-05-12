import 'package:flutter/material.dart';
import 'home_page.dart';
import 'index_page.dart';
import 'map_page.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});

  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whiskr'),
      ),
      body: const Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'Profile page'
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: 3, // Set the current index to 1 for the index page
        onTap: (index) {
          // Handle bottom navigation item taps
          switch (index) {
            case 0:
            // Navigate to home page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage(title: 'Home Page')),
              );
              break;
            case 1:
            // Navigate to index page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const IndexPage(title: 'Index Page',)),
              );
            case 2:
            // Navigate to map page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MapPage(title: 'Map Page')),
              );
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Index',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}