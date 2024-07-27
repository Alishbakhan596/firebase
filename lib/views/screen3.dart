import 'package:flutter/material.dart';
import 'package:myfirebaseproject/views/sceen2.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Screen 3"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [
              Container(
                child: Text(
                  "WishList",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon((Icons.arrow_back_ios_sharp)),
                  color: Colors.black,
                  iconSize: 30,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScreenTwo()),
                    );
                  },
                ),
              ),
            ]),
            Container(
              height: 300,
              width: 300,
              child: Image.network(
                  "https://s3-alpha-sig.figma.com/img/ba00/e7b9/6576bc71bde19319db34e1c3e33c485c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QkSQufAk20KgVe4vBvNPSW17jIBvQUkG~t1y9T984VC6mOEPapCro-cI34OdB~2eNX-c7MNvfy4HnyrToiuu-jUJ04WZcXKbaRHxs3NqDq6RFrrwPJbWcZLbEHl7hJN4rAmdL8mkXo5szchAPzqatmlmw70bGDhj7wCeyKuMgIl5lpc64YS1vBdRsNDJ6~zyIjcDKU~617d14k2BjCe3JcrNNsM8SLzwfUMF-qGBfkcPD8OtRWTkRogVo~bBtqOXvZfzS2NVzCGi20ShH8v2Zd8WxTKP1QnG38eoovADwrDgbbR-6Z~ukOANDs6LGdV9rL0eb1aFKIipmDS~eSB~Lw__"),
              //asset("assets/images/picture.jpg"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Container(
              height: 100,
              width: 300,
              child: Column(
                children: [
                  Text(
                    "CRAFTSMAN HOUSE",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text("520 N Btoudry Ave Los Angeles"),
                  Row(
                    children: [
                      Icon(
                        Icons.bedroom_parent,
                        color: Colors.black,
                      ),
                      Text("4 beds"),
                      Icon(
                        Icons.bathtub,
                        color: Colors.black,
                      ),
                      Text("4 bath"),
                      Icon(
                        Icons.directions_car,
                        color: Colors.black,
                      ),
                      Text("1 car"),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 300,
              width: 300,
              child: Image.network(
                  "https://s3-alpha-sig.figma.com/img/c787/1897/89679063c9ba15c2bd4256daf0fd2aa1?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=CPINbTBobJKlKyuR0Vws0OZNuofYLa4QoOn4KfWRv0unbt~uOdFY0bJOLwY084phiHcI-Qxu37AiGhMDTXbk5g9w1lnV~jBptdUZ8w5QNJpvuqpjqaJ004pYnCsblGIVo~nkWbWvFGMgkIueGqoDH1pGT8VFU5~e-a~SgkZ51GHpKqVn3NRgehJjk1JKyBItfoU8oUlvQBXNyGJpIO2UOQlO4~rjIf2ymvL0In3Zv1O5aBEsCo71FQYUgkhpEDZuqhTt1z5ab6uTu4oj7Jol6yRy6Dr-HZpMo5ZJckwrC5hpd1zkpe5x8ROcIPxYyXgNrpXgNEla9TsrwERd0u-wkA__"),
              //asset("assets/images/picture.jpg"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Container(
              padding: EdgeInsets.all(0),
              height: 100,
              width: 300,
              child: Column(
                children: [
                  Text(
                    "CRAFTSMAN HOUSE",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text("520 N Btoudry Ave Los Angeles"),
                  Row(
                    children: [
                      Icon(
                        Icons.bedroom_parent,
                        color: Colors.black,
                      ),
                      Text("4 beds"),
                      Icon(
                        Icons.bathtub,
                        color: Colors.black,
                      ),
                      Text("4 bath"),
                      Icon(
                        Icons.directions_car,
                        color: Colors.black,
                      ),
                      Text("1 car"),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
