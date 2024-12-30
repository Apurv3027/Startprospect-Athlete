import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  TextEditingController txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CA(
      //   titleEx: 'Help and Support',
      //   automaticallyImplyLeading: false,
      //   leadingIcon: IconButton(
      //     onPressed: (){
      //       Get.back();
      //     },
      //     icon: const Icon(Icons.arrow_back),
      //   ),
      //   centerTitle: true,
      //   style: const TextStyle(
      //     fontWeight: FontWeight.w700,
      //     fontSize: 22,
      //   ),
      // ),
      appBar: AppBar(
        title: Row(
          children: [
            Stack(
                children: [
                  Image.asset('assets/image/Online.png',height: 34),
                  Positioned(
                      top: 25,
                      left: 25,
                      child: Image.asset('assets/image/OnlineDot.png',height: 7),
                  ),
                ],
            ),
            Column(
              children: [
                Text(
                    CT.user,
                    style: TU.smTxtBtn2.copyWith(fontSize: 16,color: const Color(0xffFFFFFF)),
                ),
                Text(
                    CT.chatStatus,
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff75C92F)),
                ).paddingOnly(right: 32),
              ],
            ).paddingOnly(left: 10),
          ],
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xff6a58fb),
                Color(0xff4599f4),
              ],
            ),
          ),
        ),
        //backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: CU.background,
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.outlined_flag_rounded,size: 24,).paddingOnly(top: 20,bottom: 20,left: 15),
                    Text(
                        CT.commonTxtLine4,
                        style: TU.smTxtBtn2.copyWith(fontSize: 12,color: const Color(0xff333333)),
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffF2994A),
                            borderRadius: BorderRadius.all(Radius.circular(6))
                          ),
                          child: Text(
                            CT.progressStatus,
                            style: TU.smTxtBtn2.copyWith(fontSize: 12,color: const Color(0xffFFFFFF)),
                          ).paddingOnly(left: 7,right: 6,top: 5,bottom: 3),
                        ),
                        Text(
                            CT.chatDate,
                            style: TU.smTxtBtn2.copyWith(fontSize: 12,color: const Color(0xff7B838A)),
                        ),
                      ],
                    ).paddingOnly(top: 14,bottom: 14,left: 5,right: 15),
                  ],
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/image/Line 4.png',width: 80,).paddingOnly(left: 57),
                      const Text(CT.chatDate2).paddingOnly(left: 15,right: 17),
                      Image.asset('assets/image/Line 4.png',width: 80,).paddingOnly(right: 52),
                    ],
                  ).paddingOnly(top: 20),
                  Card(
                    shape: const OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                    ),
                    child: Text(
                      CT.chatTxt1,
                      style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff2B2E32)),
                    ).paddingAll(15),
                  ).paddingOnly(left: 15,right: 92,top: 30),
                  Text(
                    CT.chatTime,
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xffAFB1B2)),
                  ).paddingOnly(left: 15,top: 11,right: 295),
                  Card(
                    color: const Color.fromARGB(255, 131, 185, 243),
                    shape: const OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )
                    ),
                    child: Text(
                      CT.chatTxt2,
                      style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff2B2E32)),
                    ).paddingAll(15),
                  ).paddingOnly(left: 124,right: 15,top: 20),
                  Row(
                    children: [
                      const Icon(Icons.done_all_rounded,),
                      Text(
                        CT.chatTime,
                        style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xffAFB1B2)),
                      ),
                    ],
                  ).paddingOnly(left: 274,top: 11,right: 15),
                  Image.asset('assets/image/Group Grid14.png',height: 138).paddingOnly(top: 17,right: 15,left: 66),
                  Card(
                    color: const Color.fromARGB(255, 131, 185, 243),
                    shape: const OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )
                    ),
                    child: Text(
                      CT.chatTxt3,
                      style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff2B2E32)),
                    ).paddingAll(15),
                  ).paddingOnly(left: 88,right: 15,top: 8),
                  Row(
                    children: [
                      const Icon(Icons.done_rounded,),
                      Text(
                        CT.chatTime,
                        style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xffAFB1B2)),
                      ),
                    ],
                  ).paddingOnly(left: 274,top: 11,right: 15),
                  Row(
                    children: [
                      SizedBox(
                        width: 328,
                        child: TextFormField(
                          controller: txtController,
                          textInputAction: TextInputAction.done,
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            hintText: CT.typing,
                            hintStyle: const TextStyle(fontSize: 15),
                            prefixIcon: const Icon(Icons.link_rounded),
                            suffixIcon: const Icon(Icons.mic_rounded),
                            border:
                            OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                          ),
                        ).paddingOnly(left: 15),
                      ),
                      Image.asset('assets/image/Send2.png',height: 38,width: 38,).paddingOnly(left: 9,right: 15),
                    ],
                  ).paddingOnly(top: 50,bottom: 20),
                ],
              ),
            ),
          ],
        ),
        // child: Center(
        //   child: Column(
        //     children: [
        //       Container(
        //         decoration: BoxDecoration(
        //             gradient: LinearGradient(
        //               colors: CU.background,
        //             ),
        //         ),
        //         child: Card(
        //           shape: const OutlineInputBorder(
        //             borderRadius: BorderRadius.only(
        //               topLeft: Radius.circular(20),
        //               topRight: Radius.circular(20),
        //             ),
        //           ),
        //           child: ListTile(
        //             leading: Image.asset('assets/image/logo7.png',height: 40),
        //             title: Text(
        //               'Walk-Ons Bistreaux & Bar',
        //               style: TU.smTxtBtn2.copyWith(fontSize: 14,color: Colors.black),
        //             ),
        //             subtitle: Text(
        //               'Hello',
        //               style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
        //             ),
        //             trailing: Text(
        //               '8:30 AM',
        //               style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
        //             ).paddingOnly(bottom: 15),
        //             onTap: () {},
        //           ),
        //         ),
        //       ),
        //       Row(
        //         children: [
        //           Image.asset('assets/image/Line 4.png',width: 80,).paddingOnly(left: 57),
        //           const Text('Aug 25, 2021').paddingOnly(left: 15,right: 17),
        //           Image.asset('assets/image/Line 4.png',width: 80,).paddingOnly(right: 52),
        //         ],
        //       ).paddingOnly(top: 20),
        //       Card(
        //         shape: const OutlineInputBorder(
        //             borderRadius: BorderRadius.only(
        //               topLeft: Radius.circular(10),
        //               topRight: Radius.circular(10),
        //               bottomRight: Radius.circular(10),
        //             )
        //         ),
        //         child: Text(
        //           'Hey There, I Hope You Doing Well \nThank You for connecting..',
        //           style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff2B2E32)),
        //         ).paddingAll(15),
        //       ).paddingOnly(left: 15,right: 92,top: 30),
        //       Text(
        //         '09:10 PM',
        //         style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xffAFB1B2)),
        //       ).paddingOnly(left: 15,top: 11,right: 295),
        //       Card(
        //         color: const Color.fromARGB(255, 131, 185, 243),
        //         shape: const OutlineInputBorder(
        //             borderRadius: BorderRadius.only(
        //               topLeft: Radius.circular(10),
        //               topRight: Radius.circular(10),
        //               bottomLeft: Radius.circular(10),
        //             )
        //         ),
        //         child: Text(
        //           'Hi, I am John Deo. It’s a Pleaser To Meet You.',
        //           style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff2B2E32)),
        //         ).paddingAll(15),
        //       ).paddingOnly(left: 124,right: 15,top: 20),
        //       Row(
        //         children: [
        //           const Icon(Icons.done_all_rounded,),
        //           Text(
        //             '09:10 PM',
        //             style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xffAFB1B2)),
        //           ),
        //         ],
        //       ).paddingOnly(left: 274,top: 11,right: 15),
        //       Image.asset('assets/image/Group Grid14.png',height: 138).paddingOnly(top: 17,right: 15,left: 66),
        //       Card(
        //         color: const Color.fromARGB(255, 131, 185, 243),
        //         shape: const OutlineInputBorder(
        //             borderRadius: BorderRadius.only(
        //               topLeft: Radius.circular(10),
        //               topRight: Radius.circular(10),
        //               bottomLeft: Radius.circular(10),
        //             )
        //         ),
        //         child: Text(
        //           'when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
        //           style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff2B2E32)),
        //         ).paddingAll(15),
        //       ).paddingOnly(left: 88,right: 15,top: 8),
        //       Row(
        //         children: [
        //           const Icon(Icons.done_rounded,),
        //           Text(
        //             '09:10 PM',
        //             style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xffAFB1B2)),
        //           ),
        //         ],
        //       ).paddingOnly(left: 274,top: 11,right: 15),
        //       Row(
        //         children: [
        //           SizedBox(
        //             width: 328,
        //             child: TextFormField(
        //               controller: txtController,
        //               textInputAction: TextInputAction.done,
        //               cursorColor: Colors.blue,
        //               decoration: InputDecoration(
        //                 hintText: 'Type Something....',
        //                 hintStyle: const TextStyle(fontSize: 15),
        //                 prefixIcon: const Icon(Icons.link_rounded),
        //                 suffixIcon: const Icon(Icons.mic_rounded),
        //                 border:
        //                 OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        //               ),
        //             ).paddingOnly(left: 15),
        //           ),
        //           Image.asset('assets/image/Send2.png',height: 38,width: 38,).paddingOnly(left: 9,right: 15),
        //         ],
        //       ).paddingOnly(top: 50,bottom: 20),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}