import 'package:flutter/material.dart';
import 'package:named_route/activity_page.dart';
import 'package:named_route/constants.dart';

class FoodPage extends StatelessWidget {
  final String? foodName;
  final String? location;


  FoodPage({this.foodName, this.location});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "FoodPage Page", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
            ),
          ),
          Text(
            foodName!, style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
          ),
          Text(
            location!, style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Constants.activityRoute, arguments: ActivityPage(
              userName: "Fahim",
              userGender: "Male"
          ));
        },
        child: const Icon(Icons.arrow_forward_ios, color:Colors.black),
      ),
    );
  }
}
