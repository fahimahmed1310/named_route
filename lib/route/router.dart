import 'package:flutter/material.dart';
import 'package:named_route/activity_page.dart';
import 'package:named_route/constants.dart';
import 'package:named_route/food_page.dart';
import 'package:named_route/home_page.dart';

class MyRouter{

  static Route<dynamic> generateRoute (RouteSettings settings){
    switch(settings.name){
      case Constants.homeRoute:
        return MaterialPageRoute(builder: (_)=>HomePage());
      case Constants.foodRoute:
        return MaterialPageRoute(builder: (_){
          FoodPage foodPage = settings.arguments as FoodPage;
          return FoodPage(
            foodName: foodPage.foodName,
            location: foodPage.location,
          );
        });
      case Constants.activityRoute:
        return MaterialPageRoute(builder: (_){
          ActivityPage activityPage = settings.arguments as ActivityPage;
          return ActivityPage(
            userName: activityPage.userName,
            userGender: activityPage.userGender,
          );
        });
      default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(
            body: Center(
              child: Text(
                "Routes are not familiar"
              ),
            ),
          );
        });
    }
  }

}