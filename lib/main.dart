import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myfirebaseproject/views/home.dart';
import 'package:myfirebaseproject/views/chatscreen.dart';
import 'package:myfirebaseproject/firebase_options.dart';
import 'package:myfirebaseproject/views/ad_std_Fee_screen.dart';
import 'package:myfirebaseproject/views/users.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Users(),
    );
  }
}
