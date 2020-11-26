import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_recipe_app/pages/video_player_page.dart';
import 'package:food_recipe_app/utilites/tools_utilites.dart';
class DetailsRecipePage extends StatefulWidget
{
  @override
  _DetailsRecipePageState createState() => _DetailsRecipePageState();
}

class _DetailsRecipePageState extends State<DetailsRecipePage> with SingleTickerProviderStateMixin
{
  TabController _tabController;
  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this,);
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: ToolsUtilites.maincolor,
      body: SingleChildScrollView(
        child: Column(
          children:
          [
            _headingCover(),
            _headingContent(),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 30,right: 30),
              child: Container(
                color: ToolsUtilites.whitecolor,
                height: 4.0,
              ),
            ),
            _tabsContent(),
          ],
        ),
      ),
    );
  }
  //****************************************************************************
  // start build heading cover
  Widget _headingCover()
  {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children:
      [
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ToolsUtilites.maincolor,
            image: DecorationImage(
              image: NetworkImage(ToolsUtilites.imageRcipes[9]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        AppBar(
          backgroundColor: Colors.transparent,
          actions:
          [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite,
              ),
            ),
          ],
        ),
        Transform.translate(
          offset: Offset(0,160),
          child: Center(
            child: Text(
              "Recipe Name",
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
  // start build heading content
  Widget _headingContent()
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
        [
          Column(
            children:
            [
              Icon(
                Icons.timer,
                color: ToolsUtilites.whitecolor,
              ),
              SizedBox(height: 3.0,),
              Text(
                "60 minutes",
                style: TextStyle(
                  color: ToolsUtilites.whitecolor,
                ),
              ),
            ],
          ),
          Column(
            children:
            [
              Icon(
                Icons.people,
                color: ToolsUtilites.whitecolor,
              ),
              SizedBox(height: 3.0,),
              Text(
                "4 People",
                style: TextStyle(
                  color: ToolsUtilites.whitecolor,
                ),
              ),
            ],
          ),
          Column(
            children:
            [
              Icon(
                Icons.room_service,
                color: ToolsUtilites.whitecolor,
              ),
              SizedBox(height: 3.0,),
              Text(
                "40 minutes",
                style: TextStyle(
                  color: ToolsUtilites.whitecolor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  //****************************************************************************
  // start build tabs content
  Widget _tabsContent()
  {
    return Padding(
      padding: const EdgeInsets.only(left: 5,right: 5),
      child: Column(
        children:
        [
          TabBar(
            controller: _tabController,
            indicatorColor: ToolsUtilites.whitecolor,
            tabs:
            [
              Tab(
                text: "Description",
                icon: Icon(Icons.receipt),
              ),
              Tab(
                text: "Integrations",
                icon: Icon(Icons.fastfood),
              ),
              Tab(
                text: "Video",
                icon: Icon(Icons.videocam),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.50,
            child: TabBarView(
              controller: _tabController,
              children:
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: ToolsUtilites.whitecolor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                          [
                            Text(
                              "Lets Cooking",
                              style: TextStyle(
                                color: ToolsUtilites.maincolor,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                ToolsUtilites.ourVisionParagraph + ToolsUtilites.ourVisionParagraph,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: ToolsUtilites.secondcolor,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: ToolsUtilites.whitecolor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                          [
                            Text(
                              "you will need",
                              style: TextStyle(
                                color: ToolsUtilites.maincolor,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              decoration: BoxDecoration(
                                color: ToolsUtilites.maincolor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Text(
                                  ToolsUtilites.IndigrationParagraph + ToolsUtilites.IndigrationParagraph,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    color: ToolsUtilites.secondcolor,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlayVideo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children:
                        [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0,),
                              color: ToolsUtilites.maincolor,
                              image: DecorationImage(
                                image: NetworkImage(ToolsUtilites.imageRcipes[9],),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Icon(
                            FontAwesomeIcons.playCircle,
                            size: 60,
                            color: ToolsUtilites.whitecolor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  //****************************************************************************
}
