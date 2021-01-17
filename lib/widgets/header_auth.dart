import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderAuth extends StatefulWidget {
  @override
  _HeaderAuthState createState() => _HeaderAuthState();
}

class _HeaderAuthState extends State<HeaderAuth> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300], width: 2),
            borderRadius: BorderRadius.circular(50)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image(
              image: AssetImage("assets/images/u1.jpg"),
            ),
          )
        ),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Driver ID: ",style: TextStyle(fontSize: 16,color: Colors.white),),
            Text("175436C",style:TextStyle(fontSize: 17,color: Colors.deepOrange,fontWeight: FontWeight.bold))
          ],
        ),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Vehicle No: ",style: TextStyle(fontSize: 16,color: Colors.white),),
            Text("175436C",style:TextStyle(fontSize: 17,color: Colors.deepOrange,fontWeight: FontWeight.bold))
          ],
        )
      ],
    );
  }
}
