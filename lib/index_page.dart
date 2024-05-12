import 'package:flutter/material.dart';
import 'home_page.dart';
import 'map_page.dart';
import 'shelter_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  String _selectedList = 'Likes'; // Default selected list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Whiskr Picks'),
        leading: Container(
          padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 0.0),
          child: Image.asset(
            'assets/logo_transparent_noname.png', // Replace 'small_logo.png' with your logo asset path
            width: 40, // Adjust the width of the logo as needed
            height: 40, // Adjust the height of the logo as needed
          ),
        ),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    _buildDropDownButton(),
                    _buildClearButton(),
                  ],
                ),
                _buildPhotoColumn(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: 1, // Set the current index to 1 for the index page
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
        ],
      ),
    );
  }

  Widget _buildDropDownButton() {
    return Expanded(
      child: DropdownButton<String>(
        value: _selectedList,
        onChanged: (String? newValue) {
          setState(() {
            _selectedList = newValue!;
          });
        },
        items: <String>['Likes', 'Nopes'].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: SizedBox(
              width: 100, // Set the width of the dropdown menu item
              child: Text(value),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildClearButton() {
    return TextButton.icon(
      onPressed: () {
        setState(() {
          likedDogs.clear();
          nopedDogs.clear();
        });
        _clearPreferences();
      },
      icon: Icon(Icons.clear),
      label: Text('Clear History'),
    );
  }

  void _clearPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('likedDogs');
    await prefs.remove('nopedDogs');
  }

  Widget _buildPhotoColumn() {
    List<DogInfo> dogs = _selectedList == 'Likes' ? likedDogs : nopedDogs;

    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10.0,
      runSpacing: 10.0,
      children: dogs.map((dog) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: Text(dog.name),
                  ),
                  body: SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.8,
                      ),
                      child: Card(
                        color: Colors.white,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${dog.name}, ${dog.age}',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Location: ${dog.location}\n'
                                          '\nBreed: ${dog.breed}\n'
                                          '\nSex: ${dog.sex}\n'
                                          '\nAge: ${dog.age}\n'
                                          '\nAdoption Fee: ${dog.adoptionFee}\n'
                                          '\nInterests: ${dog.description}\n'
                                          '\nIntake Date: ${dog.intakeDate}',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.width * 0.4,
            child: Image.network(
              dog.photos.first,
              fit: BoxFit.cover,
            ),
          ),
        );
      }).toList(),
    );
  }
}
