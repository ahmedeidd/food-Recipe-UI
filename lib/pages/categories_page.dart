import 'package:flutter/material.dart';
import 'package:food_recipe_app/pages/all_recipes_page.dart';
import 'package:food_recipe_app/utilites/tools_utilites.dart';
class CategoriesPage extends StatefulWidget
{
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: ToolsUtilites.whitecolor,
      body: Column(
        children:
        [
          _headingCover(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Transform.translate(
              offset: Offset(0,-30),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.50,
                decoration: BoxDecoration(
                  color: ToolsUtilites.whitecolor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  children:
                  [
                    _categoryCard("assets/images/4.jpg"),
                    _categoryCard("assets/images/5.jpg"),
                    _categoryCard("assets/images/6.jpg"),
                    _categoryCard("assets/images/7.jpg"),
                    _categoryCard("assets/images/8.jpg"),
                    _categoryCard("assets/images/9.jpg"),
                    _categoryCard("assets/images/10.jpg"),
                    _categoryCard("assets/images/11.jpg"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  //****************************************************************************
  // start build heading cover
  Widget _headingCover()
  {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children:
      [
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ToolsUtilites.maincolor,
            image: DecorationImage(
              image: NetworkImage(ToolsUtilites.imageRcipes[4]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
            child: Text(
              "Categories",
              style: TextStyle(
                color: ToolsUtilites.whitecolor,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
  //****************************************************************************
  // start build category card
  Widget _categoryCard(String imagename)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AllRecipesPage(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: ToolsUtilites.whitecolor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:
            [
              Image.asset(
                imagename,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width * 0.20,
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              Text(
                "Sweets",
                style: TextStyle(
                  color: ToolsUtilites.secondcolor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  //****************************************************************************
}
