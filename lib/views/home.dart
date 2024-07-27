import 'package:flutter/material.dart';
import 'package:myfirebaseproject/views/about_screen.dart';
import 'package:myfirebaseproject/views/chatscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 2;
  List bottomNavScreens = [
    Column(
      children: [
        Column(
          children: [
            const Text(
              "Home Screen",
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ],
    ),
    AboutScreen(),
    ChatScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: bottomNavScreens.elementAt(selectedIndex),
      floatingActionButton: Container(
        child: Text("Add"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedFontSize: 25,
        onTap: (value) {
          selectedIndex = value;
          print(selectedIndex);
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.safety_check),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.safety_check), label: "About"),
          BottomNavigationBarItem(
              icon: Icon(Icons.safety_check), label: "Profile")
        ],
      ),
    );
  }
}
