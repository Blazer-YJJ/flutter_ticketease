import 'package:flutter/material.dart';
import 'package:flutter_ticketease/screens/home_screen.dart';
import 'package:flutter_ticketease/screens/profile_screen.dart';
import 'package:flutter_ticketease/screens/search_screen.dart';
import 'package:flutter_ticketease/screens/ticket_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];

  void _onItemTapped(int index) {
    // print('flutter----${_selectedIndex}');
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        elevation: 10,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.orange,
        selectedItemColor: Colors.deepOrange,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), 
            label: "Search"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket), 
            label: "AirplaneTicket"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: "Person"
          ),
        ]
      ),
    );
  }
}