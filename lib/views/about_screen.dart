// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:myfirebaseproject/views/chatscreen.dart';
// import 'package:myfirebaseproject/views/signin.dart';
// import 'package:myfirebaseproject/views/signup.dart';
// import 'package:myfirebaseproject/components/round_corner_conatiner.dart';
// import 'package:myfirebaseproject/components/custom_listtile_button.dart';

// class AboutScreen extends StatelessWidget {
//   const AboutScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
//         child: Column(
//           children: [
//             DrawerHeader(
//                 child: Column(
//               children: [
//                 CircleAvatar(
//                   radius: 50,
//                   child: Icon(
//                     Icons.person,
//                     size: 50,
//                   ),
//                 ),
//                 Text("Alishba"),
//               ],
//             )),
//             CustomListtileButton(
//                 buttonText: "Chat Screen",
//                 buttonFunc: () {
//                   Navigator.pop(context);
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => ChatScreen()));
//                 }),
//             CustomListtileButton(
//                 buttonText: "About",
//                 buttonFunc: () {
//                   print("this is about");
//                 }),
//             ListTile(
//               title: Text("Hello"),
//             ),
//             ListTile(
//               title: Text("Hello"),
//             ),
//             ListTile(
//               title: Text("Hello"),
//             ),
//           ],
//         ),
//       ),
//       appBar: AppBar(),
//       body: Center(
//         child: Container(
//           // color: Colors.red,
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               // mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   "Hello World",
//                   style: TextStyle(
//                       color: Colors.red,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => SignupScreen()));
//                     },
//                     child: Text("Signup")),
//                 ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => SignInScreen()));
//                     },
//                     child: Text("Signin")),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => ChatScreen()));
//                   },
//                   child: ListTile(
//                     leading: Hero(
//                       tag: "hero-tag",
//                       child: CircleAvatar(
//                         child: Icon(Icons.person),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     CircularProgressIndicator(
//                       value: 0.5,
//                       backgroundColor: Colors.red,
//                       color: Colors.blue,
//                     ),
//                     Text("50%")
//                   ],
//                 ),
//                 RoundCornerContainerCustom(roundContainerText: "Unza"),
//                 RoundCornerContainerCustomFun("Huda"),
//                 GestureDetector(
//                   onTap: () {
//                     print("Hello Unza");
//                   },
//                   child: Image.network(
//                       "https://media.istockphoto.com/id/1493574434/photo/car-rushes-along-the-highway-at-sunset-low-angle-side-view.jpg?s=1024x1024&w=is&k=20&c=C6fkK2gq-Ep3pHBcvRU0KHrk86F6c3WzV_ZM6KNonq0="),
//                 ),
//                 InkWell(
//                     onTap: () {
//                       print("Hello Huda");
//                     },
//                     child: Container(
//                       height: 309,
//                       width: 309,
//                       color: Colors.black.withOpacity(0.2),
//                     )),
//                 // child: Image.asset("assets/images/abc.jpg"))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
