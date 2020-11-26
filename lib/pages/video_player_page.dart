import 'package:flutter/material.dart';
import 'package:food_recipe_app/utilites/tools_utilites.dart';
import 'package:video_player/video_player.dart';
class PlayVideo extends StatefulWidget
{
  @override
  _PlayVideoState createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo>
{
  VideoPlayerController _controller;
  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.network("https://mrbebo.com/wp-content/uploads/2020/08/recipe.mp4")..initialize().then((_)
    {
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: ToolsUtilites.maincolor,
      appBar: AppBar(
        title: Text("Name of Recipe"),
        centerTitle: true,
        backgroundColor: ToolsUtilites.maincolor,
      ),
      body: Center(
        child: _controller.value.initialized ? AspectRatio(
          aspectRatio:_controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ) : Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          setState(()
          {
            _controller.value.isPlaying ? _controller.pause() : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
}
