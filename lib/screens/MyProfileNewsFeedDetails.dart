import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/CreatePost.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/CommonCard.dart';

class MPNewsFeedDetails extends StatefulWidget {
  const MPNewsFeedDetails({Key? key}) : super(key: key);

  @override
  _MPNewsFeedDetailsState createState() => _MPNewsFeedDetailsState();
}

class _MPNewsFeedDetailsState extends State<MPNewsFeedDetails>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: 'John Doe',
        centerTitle: true,
        action: [
          IconButton(
            onPressed: (){
              Get.to(const CreatePost());
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => const CreatePost(),),
              // );
            },
            icon: const Icon(Icons.add_box_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonProfilePost(
              profileLogo: const AssetImage('assets/image/logo1.png'),
              profileName: 'AP Top 26',
              txtPosition: 'Starprospect',
              dis1: 'March Madness | 2022 NCAA Tournament Get the latest NCAA basketball tournament news, game schedules, predictions, and scores throughout March Madness with AP News.',
              postImage: Image.asset('assets/image/image 22.png'),
              onTapCard: () {},
            ),
            CommonProfilePost(
              profileLogo: const AssetImage('assets/image/logo1.png'),
              profileName: 'AP Top 26',
              txtPosition: 'Starprospect',
              dis1: 'March Madness | 2022 NCAA Tournament Get the latest NCAA basketball tournament news, game schedules, predictions, and scores throughout March Madness with AP News.',
              postImage: Image.asset('assets/image/image 27.png'),
              onTapCard: () {},
            ),
            CommonProfilePost(
              profileLogo: const AssetImage('assets/image/logo1.png'),
              profileName: 'AP Top 26',
              txtPosition: 'Starprospect',
              dis1: 'March Madness | 2022 NCAA Tournament Get the latest NCAA basketball tournament news, game schedules, predictions, and scores throughout March Madness with AP News.',
              postImage: Image.asset('assets/image/image 24.png'),
              onTapCard: () {},
            ),
            // ListView.builder(
            //   itemCount: 2,
            //   shrinkWrap: true,
            //   physics: const NeverScrollableScrollPhysics(),
            //   // scrollDirection: Axis.vertical,
            //   //scrollDirection: Axis.horizontal,
            //   itemBuilder: (context, index) {
            //     return CommonProfilePost(
            //       profileLogo: const AssetImage('assets/image/logo1.png'),
            //       profileName: 'AP Top 26',
            //       txtPosition: 'Starprospect',
            //       dis1: 'March Madness | 2022 NCAA Tournament Get the latest NCAA basketball tournament news, game schedules, predictions, and scores throughout March Madness with AP News.',
            //       postImage: Image.asset('assets/image/image 24.png'),
            //       onTapCard: () {},
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }

}