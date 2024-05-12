import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'index_page.dart';
import 'map_page.dart';
import 'shelter_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserInfoWidget extends StatefulWidget {
  final DogInfo dog;

  const UserInfoWidget({
    Key? key,
    required this.dog,
  }) : super(key: key);

  @override
  _UserInfoWidgetState createState() => _UserInfoWidgetState();
}

class _UserInfoWidgetState extends State<UserInfoWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Container(
        height: isExpanded ? null : 215,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
        ),
        padding: const EdgeInsets.all(16),
        child: isExpanded ? GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = false;
            });
          },
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
                            '${widget.dog.name},\n${widget.dog.age}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isExpanded = false;
                              });
                            },
                            icon: const Icon(Icons.keyboard_arrow_down),
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
                            'Location: ${widget.dog.location}\n'
                                '\nBreed: ${widget.dog.breed}\n'
                                '\nSex: ${widget.dog.sex}\n'
                                '\nAge: ${widget.dog.age}\n'
                                '\nAdoption Fee: ${widget.dog.adoptionFee}\n'
                                '\nInterests: ${widget.dog.description}\n'
                                '\nIntake Date: ${widget.dog.intakeDate}',
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
        ) : Container(
          height: 200, // Fixed height
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: '${widget.dog.name}, ',
                        ),
                        TextSpan(
                          text: '${widget.dog.age}',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isExpanded = true;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(Icons.keyboard_arrow_up, color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Wrap(
                children: widget.dog.attributes.map((attribute) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        attribute,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SlidingCardsWidget extends StatefulWidget {
  const SlidingCardsWidget({Key? key}) : super(key: key);

  @override
  _SlidingCardsWidgetState createState() => _SlidingCardsWidgetState();
}

class _SlidingCardsWidgetState extends State<SlidingCardsWidget> {
  late MatchEngine _matchEngine;
  late List<SwipeItem> _swipeItems;
  late SharedPreferences _prefs;

  @override
  void initState() {
    super.initState();
    _loadData();
    _swipeItems = dogs.map((dog) {
      return SwipeItem(
        content: Stack(
          children: [
            Image.network(
              dog.photos.first,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: UserInfoWidget(
                dog: dog,
              ),
            ),
          ],
        ),
        likeAction: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Liked ${dog.name}"),
            duration: const Duration(milliseconds: 500),
          ));
          _likeAction(dog);
        },
        nopeAction: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Noped ${dog.name}"),
            duration: const Duration(milliseconds: 500),
          ));
          _nopeAction(dog);
        },
        onSlideUpdate: (SlideRegion? region) async {
          print("Region $region");
        },
      );
    }).toList();
    _matchEngine = MatchEngine(swipeItems: _swipeItems);
  }

  _likeAction(DogInfo dog) async {
    if (nopedDogs.contains(dog)) {
      setState(() {
        nopedDogs.remove(dog);
        likedDogs.add(dog);
      });
      await _prefs.setStringList('likedDogs', likedDogs.map((dog) => dog.id).toList());
      await _prefs.setStringList('nopedDogs', nopedDogs.map((dog) => dog.id).toList());
    } else if (!likedDogs.contains(dog)) {
      setState(() {
        likedDogs.add(dog);
      });
      await _prefs.setStringList('likedDogs', likedDogs.map((dog) => dog.id).toList());
    }
  }

  _nopeAction(DogInfo dog) async {
    if (likedDogs.contains(dog)) {
      setState(() {
        likedDogs.remove(dog);
        nopedDogs.add(dog);
      });
      await _prefs.setStringList('likedDogs', likedDogs.map((dog) => dog.id).toList());
      await _prefs.setStringList('nopedDogs', nopedDogs.map((dog) => dog.id).toList());
    } else if (!nopedDogs.contains(dog)) {
      setState(() {
        nopedDogs.add(dog);
      });
      await _prefs.setStringList('nopedDogs', nopedDogs.map((dog) => dog.id).toList());
    }
  }



  _loadData() async {
    _prefs = await SharedPreferences.getInstance();
    List<String>? likedIds = _prefs.getStringList('likedDogs');
    List<String>? nopedIds = _prefs.getStringList('nopedDogs');

    if (likedIds != null) {
      likedDogs = likedIds.map((id) => dogs.firstWhere((dog) => dog.id == id)).toList();
    }

    if (nopedIds != null) {
      nopedDogs = nopedIds.map((id) => dogs.firstWhere((dog) => dog.id == id)).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SwipeCards(
          matchEngine: _matchEngine,
          itemBuilder: (BuildContext context, int index) {
            return _swipeItems[index].content;
          },
          onStackFinished: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Stack Finished. No more dogs to show."),
              duration: Duration(milliseconds: 500),
            ));
          },
          itemChanged: (SwipeItem item, int index) {
            print("item: $index");
          },
          leftSwipeAllowed: true,
          rightSwipeAllowed: true,
          fillSpace: true,
          likeTag: Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
            ),
            child: const Text('Like'),
          ),
          nopeTag: Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
            ),
            child: const Text('Nope'),
          ),
        ),
      ],
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whiskr'),
        leading: Container(
          padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 0.0),
          child: Image.asset(
            'assets/logo_transparent_noname.png', // Replace 'small_logo.png' with your logo asset path
            width: 40, // Adjust the width of the logo as needed
            height: 40, // Adjust the height of the logo as needed
          ),
        ),
      ),
      body: const SlidingCardsWidget(),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          switch (index) {
            case 0:
            // Navigate to home page
              break;
            case 1:
            // Navigate to index page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const IndexPage(title: 'Index Page')),
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
}

void main() {
  runApp(const MaterialApp(
    home: HomePage(title: 'Whiskr Home'),
  ));
}
