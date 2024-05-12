import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home_page.dart';
import 'index_page.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(33.8805038989745, -117.8033842190053);

  final List<Marker> _markers = <Marker>[
    const Marker(
      markerId: MarkerId('Chino Hills'),
      position: LatLng(33.9574283, -117.7190997), // Chino Hills Parkway coordinates
      infoWindow: InfoWindow(
        title: 'Chino Hills',
        snippet: '2587 Chino Hills Parkway, Unit C, Chino Hills, CA 91709',
      ),
    ),
    const Marker(
      markerId: MarkerId('Claremont'),
      position: LatLng(34.100235, -117.722637), // E. Foothill Blvd. coordinates
      infoWindow: InfoWindow(
        title: 'Claremont',
        snippet: '665 E. Foothill Blvd., Unit E, Claremont, CA 91711',
      ),
    ),
    const Marker(
      markerId: MarkerId('Costa Mesa'),
      position: LatLng(33.6338081, -117.9206063), // Newport Blvd. coordinates
      infoWindow: InfoWindow(
        title: 'Costa Mesa',
        snippet: '1536 Newport Blvd., Costa Mesa, CA 92627',
      ),
    ),
    const Marker(
      markerId: MarkerId('City of Industry'),
      position: LatLng(34.022733, -117.950642), // Rausch Rd. coordinates
      infoWindow: InfoWindow(
        title: 'City of Industry',
        snippet: '15710 Rausch Rd., City of Industry, CA 91744',
      ),
    ),
  ];

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Future<void> _launchMaps(double lat, double lng, String label) async {
    final Uri url = Uri.parse('https://www.google.com/maps/search/?api=1&query=$lat,$lng');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Priceless Pets Shelter Finder'),
        leading: Container(
          padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 0.0),
          child: Image.asset(
            'assets/logo_transparent_noname.png', // Replace 'small_logo.png' with your logo asset path
            width: 40, // Adjust the width of the logo as needed
            height: 40, // Adjust the height of the logo as needed
          ),
        ),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 10.0,
        ),
        markers: Set<Marker>.from(_markers),
        onTap: (LatLng latLng) {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: 2,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage(title: 'Home Page')),
              );
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const IndexPage(title: 'Index Page')),
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
        ],
      ),
    );
  }
}
