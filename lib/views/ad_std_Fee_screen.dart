import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StudentFees extends StatelessWidget {
  StudentFees({super.key});

  CollectionReference fees = FirebaseFirestore.instance.collection('fees');

  Future getFeesData() async {
    return fees.get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              fees.add({
                "std_discount": 150,
                "std_fee": 400,
                "std_id": "13",
                "std": "50",
                "std_name": "Alishba",
                "std_info": "Student",
              }).then((ab) {
                print("fees Added $ab");
              }).catchError((cd) => print("this is error $cd"));
            },
            child: Text("Add Student Fee"),
          ),
          Expanded(
            child: FutureBuilder(
                future: getFeesData(),
                builder: (BuildContext build, AsyncSnapshot snapShot) {
                  if (snapShot.hasData) {
                    return ListView.builder(
                      itemCount: snapShot.data.docs.length,
                      itemBuilder: (context, index) {
                        return Text(
                            "data ${snapShot.data!.docs[index]['std_name']}");
                      },
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                }),
          )
        ],
      ),
    );
  }
}
