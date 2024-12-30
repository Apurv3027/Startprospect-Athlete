import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/MediaView.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen>{

  List<String> images = [
    "assets/image/Group Grid4.png",//1
    "assets/image/Group Grid5.png",//2
    "assets/image/Group Grid6.png",//3
    "assets/image/Group Grid5.png",//4
    "assets/image/Group Grid6.png",//5
    "assets/image/Group Grid5.png",//6
    "assets/image/Group Grid6.png",//7
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: CT.dealDetails,
        style: const TextStyle(
          color: Color(0xffFFFFFF),
          fontFamily: 'SF UI Display',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
        centerTitle: true,
        action: [
          PopupMenuButton(
            shape: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              gapPadding: 10,
              borderSide: BorderSide(color: Color(0xffffffff)),
            ),
            position: PopupMenuPosition.under,
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    CT.saveBtn,
                    style: TU.bsBTN,
                  ),
                ),
              ),
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    CT.report,
                    style: TU.bsBTN,
                  ),
                ),
              ),
            ],
            onSelected: (value) {},
          ).paddingOnly(top: 6, right: 10),
        ],
      ),
      body: Container(
        //color: pageColor,
        decoration: BoxDecoration(
          //color: Color(0xff6A58FB),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: CU.background,
            )),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Text(
                        CT.media,
                      style: TU.txtButton.copyWith(fontSize: 14,color: Colors.black),
                    ),
                    Text(
                        CT.selectMedia,
                      style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff6A58FB)),
                    ).paddingOnly(left: 250),
                  ],
                ).paddingOnly(top: 10),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: images.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemBuilder: (context, index){
                    return GestureDetector(
                        child: Image.asset(images[index]),
                        onTap: () {
                          Get.to(const MediaView());
                        },
                    );
                  },
                ).paddingOnly(top: 16),
                Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff6A58FB),
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        CT.downloadBTN,
                        style: TU.txtButton.copyWith(color: Colors.white),
                      ),
                    ).paddingAll(10),
                  ),
                ).paddingOnly(top: 200),
              ],
            ),
          ),
        ),
      ),
    );
  }

}