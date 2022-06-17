import 'package:flutter/material.dart';
import 'package:mobile_project_1/views/services_list.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home', style: optionStyle),
    ServicesList(),
    Text('Index 2: Profile', style: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
        //ServicesList();
        Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Welcome!"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.car_repair),
              label: 'Service',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.blue),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
