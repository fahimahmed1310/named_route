import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {

  final String? userName;
  final String? userGender;


  ActivityPage({this.userName, this.userGender});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Activity Page", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
            ),
          ),
          Text(
            userName!, style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
          ),
          Text(
            userGender!, style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),
          ),
        ],
      ),

    );
  }
}
