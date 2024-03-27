import 'package:flutter/material.dart';
import 'package:flutter_simple_bottom_navbar/pages/call/call_page.dart';
import 'package:flutter_simple_bottom_navbar/pages/chat/chat_page.dart';
import 'package:flutter_simple_bottom_navbar/pages/community/community_page.dart';
import 'package:flutter_simple_bottom_navbar/pages/update/update_page.dart';

class BottomNavigationBarSample extends StatefulWidget {
  const BottomNavigationBarSample({super.key});

  @override
  State<BottomNavigationBarSample> createState() =>
      _BottomNavigationBarSampleState();
}

class _BottomNavigationBarSampleState extends State<BottomNavigationBarSample> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    ChatPage(),
    UpdatePage(),
    CommunityPage(),
    CallPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar Example"),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.refresh), label: 'Updates'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), label: 'Communities'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}
