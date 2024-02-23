import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Fishing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
 // ignore: library_private_types_in_public_api
 _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Section1Page(),
    Section2Page(),
    Section3Page(),
    Section4Page(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.jpg'), // Path to your background image
            fit: BoxFit.cover,
          ),
        ),
      child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      appBar: AppBar(
        title: Padding( // Added Padding widget
          padding: const EdgeInsets.symmetric(vertical: 10.0), // Adjusted top padding
          child: Center(
            child: Text(
              'My Fishing',
              style: TextStyle(
                fontSize: 42,
                   color: Colors.blue
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map_rounded),
            label: 'Climate Monsoon Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Fishing Ships Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_sharp),
            label: 'Coastal Zones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.maps_ugc_sharp),
            label: 'Education Resources',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Section1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding( // Added Padding widget
          padding: const EdgeInsets.only(top: 20.0), // Adjusted top padding
          child: Center(child: Text('Climate Monsoon Map', style: TextStyle(color: const Color.fromARGB(255, 193, 52, 218)))),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CardWidget(title: 'Monsoon Tracker', color: Color.fromARGB(255, 241, 128, 128)),
            CardWidget(title: 'Disaster Alert', color: Color.fromARGB(255, 241, 128, 128)),
            CardWidget(title: 'Ban Alert', color: Color.fromARGB(255, 241, 128, 128)),
            CardWidget(title: 'Climate Tracker', color: Color.fromARGB(255, 241, 128, 128)),
          ],
        ),
      ),
    );
  }
}

class Section2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding( // Added Padding widget
          padding: const EdgeInsets.only(top: 20.0), // Adjusted top padding
          child: Center(child: Text('Fishing Ships Map', style: TextStyle(color: const Color.fromARGB(255, 193, 52, 218)))),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CardWidget(title: 'Fish Levels', color: Colors.blue),
            CardWidget(title: 'Concentration of Ships', color: Colors.blue),
            CardWidget(title: 'Patterns', color: Colors.blue),
            CardWidget(title: 'Violations', color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

class Section3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding( // Added Padding widget
          padding: const EdgeInsets.only(top: 20.0), // Adjusted top padding
          child: Center(child: Text('Coastal Zones', style: TextStyle(color: const Color.fromARGB(255, 193, 52, 218)))),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CardWidget(title: 'Land', color: Color.fromARGB(255, 221, 240, 80)),
            CardWidget(title: 'Water', color: Color.fromARGB(255, 221, 240, 80)),
            CardWidget(title: 'Protected Ecosystem', color: Color.fromARGB(255, 221, 240, 80)),
            CardWidget(title: 'Green Zone', color: Color.fromARGB(255, 221, 240, 80)),
          ],
        ),
      ),
    );
  }
}

class Section4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding( // Added Padding widget
          padding: const EdgeInsets.only(top: 20.0), // Adjusted top padding
          child: Center(child: Text('Education Resources', style: TextStyle(color: Color.fromARGB(255, 207, 21, 240)))),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CardWidget(title: 'Websites', color: Color.fromARGB(255, 147, 237, 91)),
            CardWidget(title: 'Helplines', color: Color.fromARGB(255, 147, 237, 91)),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final Color color;

  const CardWidget({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(25),
      color: color,
      child: InkWell(
        onTap: () {
          // Handle card tap
        },
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            title,
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}

