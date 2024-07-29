import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  Users({super.key});

  CollectionReference users = FirebaseFirestore.instance.collection('Users');

  Future getUsersData() async {
    return users.get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Users.add({
                "Car": "Toyota",
                "Bike": "125",
                "Name": "Murtasim",
                "Education": "Inter",
                "Age": "22",
                "Gender": "Male",
              }).then((ab) {
                print("Users Info $ab");
              }).catchError((cd) => print("error failed $cd"));
            },
            child: Text("Users"),
          ),
          Expanded(
            child: FutureBuilder(
                future: getUsersData(),
                builder: (BuildContext build, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data.docs.length,
                        itemBuilder: (context, index) {
                          return Text(
                              "data ${snapshot.data!.docs[index]['Car,Bike,Name,Education,Age,Gender']}");
                        });
                  } else {
                    return const CircularProgressIndicator();
                  }
                }),
          ),
        ],
      ),
    );
  }
}
