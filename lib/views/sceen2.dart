import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myfirebaseproject/views/screen1.dart';
import 'package:myfirebaseproject/views/screen3.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Screen 2"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [
              Container(
                child: Text(
                  "Detail",
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
                      MaterialPageRoute(builder: (context) => ScreenOne()),
                    );
                  },
                ),
              ),
            ]),
            SizedBox(
              height: 330,
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                height: 300,
                width: 300,
                child: Image.network(
                    "https://s3-alpha-sig.figma.com/img/c787/1897/89679063c9ba15c2bd4256daf0fd2aa1?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=CPINbTBobJKlKyuR0Vws0OZNuofYLa4QoOn4KfWRv0unbt~uOdFY0bJOLwY084phiHcI-Qxu37AiGhMDTXbk5g9w1lnV~jBptdUZ8w5QNJpvuqpjqaJ004pYnCsblGIVo~nkWbWvFGMgkIueGqoDH1pGT8VFU5~e-a~SgkZ51GHpKqVn3NRgehJjk1JKyBItfoU8oUlvQBXNyGJpIO2UOQlO4~rjIf2ymvL0In3Zv1O5aBEsCo71FQYUgkhpEDZuqhTt1z5ab6uTu4oj7Jol6yRy6Dr-HZpMo5ZJckwrC5hpd1zkpe5x8ROcIPxYyXgNrpXgNEla9TsrwERd0u-wkA__"),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "CRAFTSMAN HOUSE",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text("520 N Beaudry Ave,Los Angeles"),
                  Row(children: [
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
                  ]),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Image.network(
                            "https://s3-alpha-sig.figma.com/img/6772/d868/669637285fce8ae786c1c00f73204cf4?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dlrZkyk09wTVeZnWcEHehJe~hBOa~-EqCVkxG0enyla59CpbbLfnNmGS53Pom~U6CL7xSiHUfdvSZvkFQZTAAx~K136v7glHbEoZyR-ZZxF7GGOEyQu7ZsQOleqd7T-zhuNVCu4YbVzsNV1OJ1WKA3bhHbCbSABbXu0TzlUq3FLhXlS~CUwohj~fPlsLKm1SCaMn41N65v0KmMMJxx52k046vsWaW0l~vesZsKHNtubuRpjkz63L49~DDmR7kr4O~~rhMyDFGEpBNd9BIjYdbznQc5NEJQpkENQMjfkcWp5GRWr~TMrPY4fEIDKmDzG0ok~Ad-aSo9GLKzLgsfSeVA__"),
                      ),
                      Column(children: [
                        Text(
                          "Rabecca Tetha",
                          style: TextStyle(fontSize: 20),
                        ),
                        // ],
                        //),
                        Text(
                          "Owner Craftsman House",
                          style: TextStyle(fontSize: 10),
                        ),
                      ]),
                      Container(
                        child: Row(
                          children: [Icon(Icons.call), Text("Call")],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                      "Completely radone in 2021,4 bedrooms,4 bathrooms,1 garage.Amazing curb"),
                  Text(
                      "appeal and entertain area water views.Tons of builts & extras."),
                  Text(
                    "Read More",
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                "Gallery",
                style: TextStyle(fontSize: 35),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  height: 65,
                  width: 65,
                  child: Container(
                    child: Image.network(
                        "https://s3-alpha-sig.figma.com/img/7dd6/6ea9/dc44be8c0e3610860086d94eff2d7726?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cEto0qRvkyzuJ2EUTfGv0mwp3tZ7kO0MJOE93nU3XztOvPyGcO7zuk35ow~x1Xkxu6ihoOEr4hf8E3N0F6PEs3XkufZq449BXLQRpxRwkvbhTaiuEPyG1hMCuiHRmAOBnlu~mOmt1eXv-5x-6QWkFQ0ueUFsXNdG0jjYAxUnnSmPqLEDgShb66JzZ63L4tfd7AcGd4ZmMZpuip6tdXc4rSk-4a4llUdrS8DpD8y9iauS~XwEm5VZuQ0fQGjoy8QutPmNrLfqyyQawgX82KD4zy5K02soXGu9YYGyhDr9b3-X7T~lYF9~ZX5QRNE8F1XIwgdyg7hUAxkILKo5CyC4xA__"),
                  ),
                ),
                SizedBox(
                  height: 65,
                  width: 65,
                  child: Image.network(
                      "https://s3-alpha-sig.figma.com/img/a50f/1060/2dd847b80ff6957bad7f77b702987707?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=U6iOz090SjoKbGEOqT3IZYlMlq6zxQZVmIrh2GjY8WgZf~HrUX8L3~CrqSpXLEDcDR1Isr2mZJDSbmYMJHhn22Sl1IYaWI6V5O4r74s4vw0hOJVaQ~4K7oMad3MXeARAoZkoOBZ6-Ebmf9QdjCylDS7F6mX7Gzsh3C~anUlDryO0cQO3PU-ES4teSV7CcGvp2RcfpshyeZzc~PcmpEX6t8sA6lHGJ4ipNTiJ5qu8ZFi5yNLpwhBCXarixsmA-oxFHVFJMKJlPY5Wvar4WO4pCUTxXsq2Hko9AUs9RAasyFkq4K-kQogd~GU2tJZ6CjBq-lBjjAvVg-RjWv2Iql0wEg__"),
                ),
                SizedBox(
                  height: 65,
                  width: 65,
                  child: Image.network(
                      "https://s3-alpha-sig.figma.com/img/47c1/d477/0b99b77f50ac5e9c0bf693544db82f62?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LfmUe1hXuCn6mL-gN~YjyPSMOe6d~GbBdwVNEiGbQpw-04PouoX996cWuyYPWgMU9MssMV1RMqSjspY2rvT9cx9mk8HXIjoIIVDwOKU0-HDa6BF6lOm6mCadfXK1xwlbtxcdwxNn2NS7Ui3NZhJ3v3wLCPQx-ixS3EwHcFPv1797rTk8v06Qn8Qhz82ZnQQDPtKq5WMIngolzIGfZf47natfh86OOpzBJYaDSrbzMdcJfWntJVfKi-Pj1w2uPmOk5Urw6tyw2Jzgg-OoSiSiMajgZQ8xYvR4eMi0z9UXfjn9sgvMd2Tvs0iqEzCiZPGY-JVUqps3WA5KK~YcZmGXsg__"),
                ),
                SizedBox(
                  height: 65,
                  width: 65,
                  child: Image.network(
                      "https://s3-alpha-sig.figma.com/img/5252/fd89/5c1805c5fccd99f450d6680000385485?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=b6lY6rDARMf1X2CITxOFrZBgd7z57K7VpG5H4o9rMpJBh0~jOD2ulzyjY6zbpjmDjevUmBunbPrBe7Plt0bKKwQyd1xw4hgfVEPwWNjyqz1giHtJ0rUw85gGY~fBIUKD0KcWHa862YR-nJpA~uc4AmHJlduwDjwSjuh6Vk3J3U7GQGH50l2MBtxiRVEeVJ3u8IBmcAFYBfgYE5bRA36AgSL~nxZI3ZaGkTaWZ~ZUmYxw6qUGsR1-l6tGoZYgjcb79LCsPTU29ueqDHPJPnTdWOpd-WT4UVWwyoJXUhypmoMvKJ4noUKlhSyfcVKSzXQzSL9oVH5PgTz1nDe7Jg~47A__"),
                ),
              ],
            ),
            Container(
              child: Text(
                "Price",
                style: TextStyle(fontSize: 35),
              ),
            ),
            Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.attach_money),
                      Text(
                        "5990000",
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
                //   ],
                // ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (Context) => ScreenThree()),
                      );
                    },
                    child: Text(
                      " BUY NOW",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black12,
                      ),
                      selectionColor: Colors.brown,
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20),
                        backgroundColor: Color.fromARGB(4, 187, 33, 243)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
