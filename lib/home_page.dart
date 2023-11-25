import 'package:flutter/material.dart';
import 'package:named_route/constants.dart';
import 'package:named_route/food_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: const Center(
        child: Text(
          "Home Page", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  
          Navigator.pushNamed(context, Constants.foodRoute, arguments: FoodPage(
            foodName: "Biriyani",
            location: "Dhaka"
          ));
        },
        child: const Icon(Icons.arrow_forward_ios, color:Colors.black),
      ),
    );
  }
}
