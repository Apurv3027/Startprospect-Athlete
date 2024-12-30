import 'package:flutter/material.dart';

class ProfileViewNewsFeed extends StatefulWidget {
  const ProfileViewNewsFeed({Key? key}) : super(key: key);

  @override
  _ProfileViewNewsFeedState createState() => _ProfileViewNewsFeedState();
}

class _ProfileViewNewsFeedState extends State<ProfileViewNewsFeed>{

  List<String> images = [
    "assets/image/Group Grid1.png",//1
    "assets/image/Group Grid2.png",//2
    "assets/image/Group Grid3.png",//3
    "assets/image/Group Grid2.png",//4
    "assets/image/Group Grid3.png",//5
    "assets/image/Group Grid1.png",//6
    "assets/image/Group Grid3.png",//7
    "assets/image/Group Grid1.png",//8
    "assets/image/Group Grid2.png",//9
    "assets/image/Group Grid1.png",//10
    "assets/image/Group Grid2.png",//11
    "assets/image/Group Grid3.png",//12
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
          ),
          itemBuilder: (context, index){
            return Image.asset(images[index]);
          },
        ),
      ),
    );
  }

}