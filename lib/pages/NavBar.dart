import 'package:flutter/material.dart';
import './BodyContent.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: chart',
      style: optionStyle,
    ),
    Text(
      'Index 2: bell',
      style: optionStyle,
    ),
    Text(
      'Index 3: option',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black,
              offset: Offset(0, 5),
              blurStyle: BlurStyle.outer,
              blurRadius: 10
          ),
        ],
      ),
      child: BottomNavigationBar(
        elevation: 10,
        unselectedItemColor: Colors.black87,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 35),
            label: "home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart, size: 35),
              label: "chart"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none, size: 35),
              label: "bell"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, size: 35),
              label: "option",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
