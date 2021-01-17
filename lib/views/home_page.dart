import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:vehicle_detect/widgets/body_auth.dart';
import 'package:vehicle_detect/widgets/header_auth.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Authentication",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300], width: 2),
                  borderRadius: BorderRadius.circular(50)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(
                  image: AssetImage("assets/images/u1.jpg"),
                ),
              )),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Driver ID: ",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text("175436C",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold))
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Name: ",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text("John Kala",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 70,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[400], width: 1)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Vehicle No : ",
                                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                                ),
                                Text("175436C",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            SizedBox(height: 6,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Passing Location: ",
                                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                                ),
                                Text("Rampura",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(image: AssetImage("assets/images/verified.png"),width: 40,height: 40,),
                          SizedBox(height: 5,),
                          Text("Verified",style: TextStyle(fontSize: 18),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
