import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MediaView extends StatefulWidget {
  const MediaView({Key? key}) : super(key: key);

  @override
  State<MediaView> createState() => _MediaViewState();
}

class _MediaViewState extends State<MediaView>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: (){
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Color(0xffFFFFFF),
                    ),
                ).paddingOnly(left: 15),
                IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.file_download_outlined,
                      size: 25,
                      color: Color(0xffFFFFFF),
                    ),
                ).paddingOnly(right: 15,left: 265),
              ],
            ).paddingOnly(top: 55),
            Image.asset('assets/image/Media.png').paddingOnly(top: 116),
          ],
        ),
      ),
    );
  }

}