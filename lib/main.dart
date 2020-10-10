import 'package:flutter/material.dart';
import 'package:smart_food_ui/pages/FoodDetailsPage.dart';
import 'package:smart_food_ui/pages/FoodOrderPage.dart';
import 'package:smart_food_ui/pages/HomePage.dart';
import 'package:smart_food_ui/pages/SignInPage.dart';
import 'package:smart_food_ui/pages/SignUpPage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto', hintColor: Color(0xFFd0cece)),
      home: HomePage(),
    ));
