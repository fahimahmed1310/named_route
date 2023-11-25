import 'package:flutter/material.dart';
import 'package:named_route/constants.dart';
import 'package:named_route/route/router.dart';

void main() {
  runApp(const NamedRoute());
}

class NamedRoute extends StatelessWidget {
  const NamedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Constants.homeRoute,
      onGenerateRoute: MyRouter.generateRoute,
    );
  }
}


