import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/pages/details_recipe_page.dart';
import 'package:food_recipe_app/utilites/tools_utilites.dart';
class FavouritePage extends StatefulWidget
{
  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ToolsUtilites.maincolor,
        title: Text("Favourite"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: ToolsUtilites.imageRcipes.length,
        itemBuilder: (context,index)
        {
          return _favouriteCard(index);
        },
      ),
    );
  }
  //****************************************************************************
  // start buil new card
  Widget _favouriteCard(int index)
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
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width ,
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
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width ,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0,),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Row(
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
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                          [
                            Text(
                              "short description for recipe",
                              style: TextStyle(
                                color: ToolsUtilites.whitecolor,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 5.0,),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
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
