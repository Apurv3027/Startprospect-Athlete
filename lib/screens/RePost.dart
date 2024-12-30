import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/HomePage.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/CommonTextField.dart';
import 'package:starprospect/utility/TextStyle.dart';

class Repost extends StatefulWidget {
  const Repost({Key? key}) : super(key: key);

  @override
  _RepostState createState() => _RepostState();
}

class _RepostState extends State<Repost>{

  TextEditingController tagController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CA(
      //   titleEx: 'Repost',
      //   centerTitle: true,
      //   action: [
      //     TextButton(
      //       onPressed: () {
      //         // Navigator.of(context).pop();
      //         Navigator.of(context).pushAndRemoveUntil(
      //             MaterialPageRoute(
      //               builder: (context) => const HomePage(),
      //             ),
      //                 (route) => false);
      //       },
      //       child: Text(
      //         'Post',
      //         style: TU.appBarActionTxt.copyWith(fontWeight: FontWeight.w400),
      //       ),
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Container(
          //color: pageColor,
          decoration: BoxDecoration(
            //color: Color(0xff6A58FB),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: CU.background,
              )),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_rounded,color: Colors.white,size: 24),
                  ).paddingOnly(top: 42,bottom: 10,right: 114),
                  const Text(
                    'Repost',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontFamily: 'SF UI Display',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ).paddingOnly(top: 30),
                  TextButton(
                    onPressed: () {
                      // Navigator.of(context).pop();
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                              (route) => false);
                    },
                    child: Text(
                      'Post',
                      style: TU.appBarActionTxt.copyWith(fontWeight: FontWeight.w400),
                    ),
                  ).paddingOnly(top: 30,left: 90),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          height: 40,
                          width: 40,
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/image/logo1.png'),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'John Doe',
                                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),
                              ),
                            ],
                          ).paddingOnly(left: 10),
                        ),
                      ],
                    ).paddingAll(10),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: SizedBox(
                        height: 370,
                        width: 300,
                        child: Card(
                          shape: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Colors.white)),
                          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          shadowColor: Colors.black,
                          elevation: 5,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage('assets/image/logo1.png'),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'AP Top 26',
                                          style: TextStyle(fontWeight: FontWeight.w900),
                                        ),
                                        Row(
                                          children: [
                                            const Text('@aP_Top26'),
                                            Container(
                                              margin: const EdgeInsets.symmetric(horizontal: 7),
                                              width: 5.0,
                                              height: 5.0,
                                              decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                                            ),
                                            const Text('20h'),
                                          ],
                                        ),
                                      ],
                                    ).paddingOnly(left: 10),
                                  ),
                                ],
                              ).paddingAll(10),
                              ClipRRect(
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                child: Image.asset('assets/image/image 27.png',height: 175,),
                              ).paddingOnly(left: 8,right: 12),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        'apnews.com',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ],
                                  ).paddingOnly(left: 10, top: 15),
                                  const Text(
                                    'March Madness | 2022 NCAA Tournament',
                                    style: TextStyle(fontSize: 12),
                                  ).paddingOnly(top: 8,right: 32),
                                  const Text(
                                    'Gratfull to god after winning this tournament',
                                    style: TextStyle(fontSize: 12),
                                  ).paddingOnly(top: 8,right: 20),
                                  Row(children: const [
                                    Text(
                                      "By",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '@JohnDoeAP',
                                      style: TextStyle(color: Colors.blue,fontSize: 12),
                                    )
                                  ]).paddingOnly(left: 10, top: 8,bottom: 4),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ).paddingOnly(left: 15),
                    ),
                    CTF.commonTextField(
                      suggestionTxt: '@tag',
                      name: 'Tag People',
                      controller: tagController,
                      action: TextInputAction.next,
                    ).paddingOnly(top: 15),
                    CTF.commonTextField(
                      suggestionTxt: 'Add description',
                      name: 'Description',
                      controller: descriptionController,
                      action: TextInputAction.next,
                    ).paddingOnly(top: 15),
                  ],
                ).paddingOnly(left: 15,top: 15,right: 15,bottom: 150),
              ),
            ],
          ),
        ),
      ),
    );
  }

}