import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/pages/start_page.dart';
import 'package:food_recipe_app/utilites/on_bording_model.dart';
import 'package:food_recipe_app/utilites/tools_utilites.dart';
class OnBordingPage extends StatefulWidget
{
  @override
  _OnBordingPageState createState() => _OnBordingPageState();
}
class _OnBordingPageState extends State<OnBordingPage>
{
  int currentindex = 0;
  bool atend = false;
  PageController _pageController;
  @override
  void initState()
  {
    _pageController = PageController(
      initialPage: 0,
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Flexible(
          child: PageView.builder(
            itemCount: slidedata.length,
            controller: _pageController,
            onPageChanged: (index)
            {
              if(index == (slidedata.length - 1))
              {
                setState(() {
                  currentindex = index;
                  atend = true;
                });
              }
              else
              {
                setState(() {
                  currentindex = index;
                  atend = false;
                });
              }
            },
            itemBuilder: (context,index)
            {
              return Scaffold(
                backgroundColor: ToolsUtilites.maincolor,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  actions:
                  [
                    RaisedButton(
                      color: Colors.transparent,
                      elevation: 0,
                      onPressed: ()
                      {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => StartPage()),
                        );
                      },
                      child: atend ? Text(
                        "Start",
                        style: TextStyle(
                          color: ToolsUtilites.whitecolor,
                          fontSize: 20,
                        ),
                      ) : Text(
                        "Skip",
                        style: TextStyle(
                          color: ToolsUtilites.whitecolor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  [
                    _slideImage(),
                    _headLine(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: _drawdots(slidedata.length),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
  //****************************************************************************
  // start build slide image
  Widget _slideImage()
  {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: MediaQuery.of(context).size.height * 0.50,
      decoration: BoxDecoration(
        color: ToolsUtilites.whitecolor,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: ExactAssetImage(slidedata[currentindex].image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
  //****************************************************************************
  // start build head line
  Widget _headLine()
  {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        slidedata[currentindex].title,
        style: TextStyle(
          color: ToolsUtilites.whitecolor,
          fontSize: 30.0,
        ),
      ),
    );
  }
  //****************************************************************************
  // start build drow doots
  List<Widget> _drawdots(int length)
  {
    List<Widget> widgets = [];
    for(int i = 0; i < length; i++)
    {
      widgets.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: (i == currentindex) ? ToolsUtilites.secondcolor : ToolsUtilites.whitecolor,
            ),
          ),
        ),
      );
    }
    return widgets;
  }
  //****************************************************************************
}


//******************************************************************************
// create the on bording sliders contents
List<OnBordingModel> slidedata =
[
  OnBordingModel("assets/images/1.jpg","first"),
  OnBordingModel("assets/images/2.jpg","second"),
  OnBordingModel("assets/images/3.jpg","third"),
];
//******************************************************************************
