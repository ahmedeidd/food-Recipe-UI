import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/pages/details_recipe_page.dart';
import 'package:food_recipe_app/utilites/tools_utilites.dart';
class HomePage extends StatefulWidget
{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: ToolsUtilites.whitecolor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            _headingcover(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Featured Recipes",
                style: TextStyle(
                  color: ToolsUtilites.secondcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              child: ListView.builder(
                itemCount: ToolsUtilites.imageRcipes.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index)
                {
                  return _feauredCard(index);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "New",
                style: TextStyle(
                  color: ToolsUtilites.secondcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              child: ListView.builder(
                itemCount: ToolsUtilites.imageRcipes.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index)
                {
                  return _newCard(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  //****************************************************************************
  // start build heading cover
  Widget _headingcover()
  {
    return Stack(
      children:
      [
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ToolsUtilites.maincolor,
            image: DecorationImage(
              image: NetworkImage(
                ToolsUtilites.imageRcipes[0],
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150.0,left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Text(
                "Daily New Recipe",
                style: TextStyle(
                  color: ToolsUtilites.whitecolor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Discovery Now",
                style: TextStyle(
                  color: ToolsUtilites.whitecolor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  //****************************************************************************
  // start build feaured card
  Widget _feauredCard(int index)
  {
    return InkWell(
      onTap: ()
      {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsRecipePage(),
          ),
        );
      },
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children:
        [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.40,
              decoration: BoxDecoration(
                color: ToolsUtilites.maincolor,
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: NetworkImage(ToolsUtilites.imageRcipes[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.40,
              height: MediaQuery.of(context).size.height * 0.10,
              decoration: BoxDecoration(
                color: ToolsUtilites.secondcolor.withOpacity(0.5),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:
                  [
                    Text(
                      "Title Recipe",
                      style: TextStyle(
                        color: ToolsUtilites.whitecolor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Icon(
                          Icons.restaurant,
                          color: ToolsUtilites.whitecolor,
                        ),
                        SizedBox(width: 5.0,),
                        Text(
                          "Category",
                          style: TextStyle(
                            color: ToolsUtilites.whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
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
  // start buil new card
  Widget _newCard(int index)
  {
    return InkWell(
      onTap: ()
      {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsRecipePage(),
          ),
        );
      },
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children:
        [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.70,
              decoration: BoxDecoration(
                color: ToolsUtilites.maincolor,
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: NetworkImage(ToolsUtilites.imageRcipes[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: ToolsUtilites.secondcolor.withOpacity(0.5),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),),
              ),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.70,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0,bottom: 10.0,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:
                  [
                    Text(
                      "Title Recipe",
                      style: TextStyle(
                        color: ToolsUtilites.whitecolor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Icon(
                          Icons.timer,
                          color: ToolsUtilites.whitecolor,
                        ),
                        SizedBox(width: 5.0,),
                        Text(
                          "60 minutes",
                          style: TextStyle(
                            color: ToolsUtilites.whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
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
}
