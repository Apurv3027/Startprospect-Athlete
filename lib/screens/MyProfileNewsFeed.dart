import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/LoginScreen.dart';
import 'package:starprospect/screens/MyProfileNewsFeedDetails.dart';

class MyProfileNewsFeed extends StatefulWidget {
  const MyProfileNewsFeed({Key? key}) : super(key: key);

  @override
  _MyProfileNewsFeedState createState() => _MyProfileNewsFeedState();
}

class _MyProfileNewsFeedState extends State<MyProfileNewsFeed> {

  List<String> images = [
    "assets/image/Group Grid7.png", //1
    "assets/image/Group Grid8.png", //2
    "assets/image/Group Grid9.png", //3
    "assets/image/Group Grid8.png", //4
    "assets/image/Group Grid9.png", //5
    "assets/image/Group Grid7.png", //6
    "assets/image/Group Grid9.png", //7
    "assets/image/Group Grid7.png", //8
    "assets/image/Group Grid8.png", //9
    "assets/image/Group Grid7.png", //10
    "assets/image/Group Grid8.png", //11
    "assets/image/Group Grid9.png", //12
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
          itemBuilder: (context, index) {
            return GestureDetector(
                child: Image.asset(images[index],),
                onTap: (){
                  Get.to(const MPNewsFeedDetails());
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => const MPNewsFeedDetails(),),
                  // );
                },
            );
          },
        ),
      ),
    );
  }
}
