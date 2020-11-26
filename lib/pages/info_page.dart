import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/utilites/tools_utilites.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class InfoPage extends StatefulWidget
{
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage>
{
  // ignore: non_constant_identifier_names
  TextEditingController name_text_controller = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController email_text_controller = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController phone_text_controller = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController message_text_controller = TextEditingController();
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
                "we here for you",
                style: TextStyle(
                  color: ToolsUtilites.secondcolor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _infoCard(ToolsUtilites.ourVisionParagraph,"our Vision",4),
            _infoCard(ToolsUtilites.ourmissionParagraph,"our mission",9),
            _contactForm(),
            _socialMediaItem(),
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
      alignment: AlignmentDirectional.bottomCenter,
      children:
      [
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ToolsUtilites.maincolor,
            image: DecorationImage(
              image: NetworkImage(
                ToolsUtilites.imageRcipes[8],
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Text(
              "About Our Recipe community ",
              style: TextStyle(
                color: ToolsUtilites.whitecolor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
  //****************************************************************************
  // start build information card
  Widget _infoCard(String infoParagraph,String title,int imageIndex)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                color: ToolsUtilites.secondcolor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Card(
            child: Column(
              children:
              [
                Image.network(
                  ToolsUtilites.imageRcipes[imageIndex],
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.30,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    infoParagraph,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: ToolsUtilites.secondcolor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
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
  // start build custom Text Filed
  Widget _customTextFiled(int maxLine,TextEditingController controller,String hintname)
  {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        maxLines: maxLine,
        controller: controller,
        decoration: InputDecoration(
          hoverColor: ToolsUtilites.secondcolor,
          focusColor: ToolsUtilites.secondcolor,
          labelText: hintname,
          labelStyle: TextStyle(color: ToolsUtilites.secondcolor),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ToolsUtilites.secondcolor,),
          ),
        ),
      ),
    );
  }
  //****************************************************************************
  // start build contact form
  Widget _contactForm()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Send Message",
            style: TextStyle(
              color: ToolsUtilites.secondcolor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15,left: 25,bottom: 10,top: 10,),
          child: Column(
            children:
            [
              _customTextFiled(1, name_text_controller, "enter your name"),
              _customTextFiled(1, email_text_controller, "enter your email"),
              _customTextFiled(1, phone_text_controller, "enter your phone number"),
              _customTextFiled(2, message_text_controller, "enter your message"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: ToolsUtilites.maincolor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: FlatButton.icon(
                onPressed: (){},
                icon: Icon(
                  Icons.email,
                  color: ToolsUtilites.whitecolor,
                ),
                label: Text(
                  "Send Message",
                  style: TextStyle(
                    color: ToolsUtilites.whitecolor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
  //****************************************************************************
  // start build social media item
   Widget _socialMediaItem()
   {
     return Padding(
       padding: const EdgeInsets.only(left: 8.0,bottom: 20.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children:
         [
           Padding(
             padding: const EdgeInsets.only(left: 8.0,),
             child: Text(
               "Follow Us",
               style: TextStyle(
                 color: ToolsUtilites.secondcolor,
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children:
               [
                 Icon(
                   FontAwesomeIcons.facebook,
                   color: ToolsUtilites.secondcolor,
                 ),
                 Icon(
                   FontAwesomeIcons.twitter,
                   color: ToolsUtilites.secondcolor,
                 ),
                 Icon(
                   FontAwesomeIcons.telegram,
                   color: ToolsUtilites.secondcolor,
                 ),
                 Icon(
                   FontAwesomeIcons.instagram,
                   color: ToolsUtilites.secondcolor,
                 ),
                 Icon(
                   FontAwesomeIcons.youtube,
                   color: ToolsUtilites.secondcolor,
                 ),
                 Icon(
                   FontAwesomeIcons.pinterest,
                   color: ToolsUtilites.secondcolor,
                 ),
                 SizedBox(width: 13,),
               ],
             ),
           ),
         ],
       ),
     );
   }
  //****************************************************************************
}
