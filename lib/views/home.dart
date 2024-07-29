import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myfirebaseproject/views/signin.dart';
import 'package:myfirebaseproject/views/signup.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//       ),
//       body: Column(
//         children: [
//           Stack(
//               clipBehavior: Clip.none,
//               alignment: Alignment.center,
//               children: [
//                 Container(
//                   height: 100,
//                   width: 100,
//                   color: Colors.pink.shade100,
//                 ),
//               ]),
//         ],
//       ),
//     );
//   }
// }

// import 'package:myfirebaseproject/views/about_screen.dart';
// import 'package:myfirebaseproject/views/chatscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List bottomNavScreens = [
    Column(
      children: [
        Column(
          children: [
            const Text(
              "Home Screen",
              style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ],
    ),
    SignInScreen(),
    SignupScreen(),
    //   AboutScreen(),
    //   ChatScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavScreens.elementAt(selectedIndex),
      //floatingActionButton: Container(
      //child: Text("Add"),
      //),
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
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.safety_check), label: "About"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: "Profile")
        ],
      ),
    );
  }
}
