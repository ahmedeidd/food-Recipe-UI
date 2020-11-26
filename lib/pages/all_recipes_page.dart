import 'package:flutter/material.dart';
import 'package:food_recipe_app/pages/details_recipe_page.dart';
import 'package:food_recipe_app/utilites/tools_utilites.dart';
class AllRecipesPage extends StatefulWidget
{
  @override
  _AllRecipesPageState createState() => _AllRecipesPageState();
}

class _AllRecipesPageState extends State<AllRecipesPage>
{
  List<int> favouriteIcon = [2,4,8];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ToolsUtilites.maincolor,
        title: Text('All Recipes'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: [
            _feauredCard(1),
            _feauredCard(2),
            _feauredCard(3),
            _feauredCard(4),
            _feauredCard(0),
            _feauredCard(5),
            _feauredCard(6),
            _feauredCard(7),
          ],
        ),
      ),
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
              width: MediaQuery.of(context).size.width * 0.50,
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
              width: MediaQuery.of(context).size.width * 0.50,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                      [
                        Row(
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
                        Row(
                          children:
                          [
                            Icon(
                              Icons.favorite,
                              color: favouriteIcon.contains(index) ? ToolsUtilites.whitecolor : Colors.red,
                              size: 20,
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
