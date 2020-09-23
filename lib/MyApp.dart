import 'package:flutter/material.dart';
import 'package:flutter_app_test/LogIn.dart';
import 'package:flutter_app_test/food.dart';
import 'package:flutter_app_test/listMenu.dart';
import 'package:flutter_app_test/rate.dart';
import 'menu.dart';


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        onGenerateRoute: (settings){
          if (settings.name == Food.ROUTER) {
            final Menu args = settings.arguments;
            return MaterialPageRoute(
                builder: (context) => Food(
                  image: args.image,
                  name: args.name,
                  star: args.star,
                )
            );
          }
          assert(false, 'Need to implement ${settings.name}');
          return null;
        },
      routes: {
        Food.ROUTER: (context) => Food(),
        ListMenu.ROUTER: (context) => ListMenu(),
        Rate.ROUTER: (context) => Rate()
      },
      home: LogIn()
    );
  }
}