import 'package:flutter/material.dart';
import 'package:smart_food_ui/animation/ScaleRoute.dart';
import 'package:smart_food_ui/pages/SignInPage.dart';
import 'package:smart_food_ui/widgets/BestFoodWidget.dart';
import 'package:smart_food_ui/widgets/BottomNavBarWidget.dart';
import 'package:smart_food_ui/widgets/PopularFoodsWidget.dart';
import 'package:smart_food_ui/widgets/SearchWidget.dart';
import 'package:smart_food_ui/widgets/TopMenus.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          "What would you like to eat?",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {Navigator.push(context, ScaleRoute(page: SignInPage()));})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            TopMenus(),
            PopularFoodsWidget(),
            BestFoodWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
