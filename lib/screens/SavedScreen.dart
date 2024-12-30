import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/SavedPostScreen.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/TextStyle.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: 'Saved',
        style: const TextStyle(
          color: Color(0xffFFFFFF),
          fontFamily: 'SF UI Display',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // GridView.count(
            //   shrinkWrap: true,
            //     crossAxisCount: 2,
            //     crossAxisSpacing: 15,
            //     mainAxisSpacing: 15,
            //     children: List.generate(4, (index){
            //       return SizedBox(
            //         height: 146,
            //         width: 160,
            //         child: Card(
            //           child: Column(
            //             children: [
            //               Image.asset('assets/image/SavedPic.png',height: 150),
            //               Row(
            //                 children: [
            //                   Text(
            //                     'By',
            //                     style: TU.smTxt2.copyWith(fontSize: 10),
            //                   ),
            //                   Text(
            //                     ' @JohnDoeAP',
            //                     style: TU.smTxt2.copyWith(fontSize: 10,color: const Color(0xff6A58FB)),
            //                   ),
            //                 ],
            //               ).paddingOnly(left: 15,right: 51,top: 10,bottom: 10),
            //             ],
            //           ),
            //         ),
            //       );
            //     }),
            // ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(const SavedPostScreen());
                  },
                  child: SizedBox(
                    height: 150,
                    width: 170,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/image/SavedPic.png',height: 108),
                          Row(
                            children: [
                              Text(
                                  'By',
                                  style: TU.smTxt2.copyWith(fontSize: 10),
                              ),
                              Text(
                                  ' @JohnDoeAP',
                                  style: TU.smTxt2.copyWith(fontSize: 10,color: const Color(0xff6A58FB)),
                              ),
                            ],
                          ).paddingOnly(left: 15,right: 51,top: 10,bottom: 10),
                        ],
                      ),
                    ),
                  ).paddingOnly(right: 10),
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(const SavedPostScreen());
                  },
                  child: SizedBox(
                    height: 150,
                    width: 170,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/image/SavedPic.png',height: 108),
                          Row(
                            children: [
                              Text(
                                  'By',
                                  style: TU.smTxt2.copyWith(fontSize: 10),
                              ),
                              Text(
                                  ' @JohnDoeAP',
                                  style: TU.smTxt2.copyWith(fontSize: 10,color: const Color(0xff6A58FB)),
                              ),
                            ],
                          ).paddingOnly(left: 15,right: 51,top: 10,bottom: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ).paddingOnly(left: 20,top: 20,right: 20),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(const SavedPostScreen());
                  },
                  child: SizedBox(
                    height: 150,
                    width: 170,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/image/SavedPic.png',height: 108),
                          Row(
                            children: [
                              Text(
                                  'By',
                                  style: TU.smTxt2.copyWith(fontSize: 10),
                              ),
                              Text(
                                  ' @JohnDoeAP',
                                  style: TU.smTxt2.copyWith(fontSize: 10,color: const Color(0xff6A58FB)),
                              ),
                            ],
                          ).paddingOnly(left: 15,right: 51,top: 10,bottom: 10),
                        ],
                      ),
                    ),
                  ).paddingOnly(right: 10),
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(const SavedPostScreen());
                  },
                  child: SizedBox(
                    height: 150,
                    width: 170,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/image/SavedPic.png',height: 108),
                          Row(
                            children: [
                              Text(
                                  'By',
                                  style: TU.smTxt2.copyWith(fontSize: 10),
                              ),
                              Text(
                                  ' @JohnDoeAP',
                                  style: TU.smTxt2.copyWith(fontSize: 10,color: const Color(0xff6A58FB)),
                              ),
                            ],
                          ).paddingOnly(left: 15,right: 51,top: 10,bottom: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ).paddingOnly(left: 20,top: 20,right: 20),
            // SizedBox(
            //   height: 146,
            //   width: 160,
            //   child: Card(
            //     child: Column(
            //       children: [
            //         Image.asset('assets/image/SavedPic.png',height: 108),
            //         Row(
            //           children: [
            //             Text(
            //                 'By',
            //                 style: TU.smTxt2.copyWith(fontSize: 10),
            //             ),
            //             Text(
            //                 ' @JohnDoeAP',
            //                 style: TU.smTxt2.copyWith(fontSize: 10,color: const Color(0xff6A58FB)),
            //             ),
            //           ],
            //         ).paddingOnly(left: 15,right: 51,top: 10,bottom: 10),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

}