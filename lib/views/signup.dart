import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myfirebaseproject/views/about_screen.dart';
import 'package:myfirebaseproject/views/home.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();
  @override
  signupFunc1() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailControl.text,
        password: passwordControl.text,
      );
      print(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      } else {
        print(e.code);
      }
    } catch (e) {
      print(e);
    }
    print("Test");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 5.0, spreadRadius: 5.0)
                ]),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutScreen()));
                },
                icon: Icon(Icons.arrow_back_ios)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Email"),
                TextField(
                  controller: emailControl,
                ),
                Text("Password"),
                TextField(
                  controller: passwordControl,
                ),
                ElevatedButton(
                    onPressed: () {
                      print("Test signup");
                      signupFunc1();
                    },
                    child: Text("Signup"))
              ],
            )),
          ),
        ]),
      ),
    );
  }
}
