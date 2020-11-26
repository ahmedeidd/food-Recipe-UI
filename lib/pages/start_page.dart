import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:food_recipe_app/pages/all_recipes_page.dart';
import 'package:food_recipe_app/pages/categories_page.dart';
import 'package:food_recipe_app/pages/favourite_Page.dart';
import 'package:food_recipe_app/pages/home_page.dart';
import 'package:food_recipe_app/pages/info_page.dart';
import 'package:food_recipe_app/utilites/tools_utilites.dart';
class StartPage extends StatefulWidget
{
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage>
{
  int _page = 0;
  GlobalKey _menkey = GlobalKey();
  @override
  Widget build(BuildContext context)
  {
    List<Widget> tabs = [
      InfoPage(),
      CategoriesPage(),
      HomePage(),
      AllRecipesPage(),
      FavouritePage(),
    ];
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _menkey,
        index: 2,
        items: [
          Icon(
            Icons.info,
            color: ToolsUtilites.whitecolor,
            size: 20,
          ),
          Icon(
            Icons.calendar_view_day,
            color: ToolsUtilites.whitecolor,
            size: 20,
          ),
          Icon(
            Icons.whatshot,
            color: ToolsUtilites.whitecolor,
            size: 20,
          ),
          Icon(
            Icons.receipt,
            color: ToolsUtilites.whitecolor,
            size: 20,
          ),
          Icon(
            Icons.favorite,
            color: ToolsUtilites.whitecolor,
            size: 20,
          ),
        ],
        color: ToolsUtilites.maincolor,
        backgroundColor: ToolsUtilites.whitecolor,
        animationCurve: Curves.easeInOut,
        onTap: (index)
        {
          setState(() {
            _page = index;
          });
        },
      ),
      body: tabs[_page],
    );
  }
}
