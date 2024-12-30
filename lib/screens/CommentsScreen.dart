import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/CommonCard.dart';
import 'package:starprospect/utility/Text.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({Key? key}) : super(key: key);

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CA(
      //   titleEx: 'Comments',
      //   style: const TextStyle(
      //     color: Color(0xffFFFFFF),
      //     fontFamily: 'SF UI Display',
      //     fontStyle: FontStyle.normal,
      //     fontWeight: FontWeight.w700,
      //     fontSize: 22,
      //   ),
      //   centerTitle: true,
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
                  ).paddingOnly(top: 42,bottom: 10,right: 89),
                  const Text(
                    CT.comments,
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontFamily: 'SF UI Display',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ).paddingOnly(top: 30,right: 128),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CommonComments(
                        topImage: 39,
                        topProfile: 41,
                        topUsername: 42,
                        topIcon: 43,
                        height: 26,
                        profileLogo: const AssetImage('assets/image/Rectangle 4.png'),
                        like: false,
                      ),
                      Divider(
                        color: const Color(0xff1E1E1E).withOpacity(0.20),
                        thickness: 2,
                      ).paddingOnly(top: 22),
                      CommonComments(
                        topImage: 22,
                        topProfile: 23,
                        topUsername: 24,
                        topIcon: 26,
                        height: 40,
                        profileLogo: const AssetImage('assets/image/Rectangle 5.png'),
                        like: true,
                      ),
                      Divider(
                          color: const Color(0xff1E1E1E).withOpacity(0.20),
                          indent: 55,
                          thickness: 2,
                      ).paddingOnly(top: 18),
                      CommonComments(
                        topImage: 15,
                        topProfile: 17,
                        topUsername: 18,
                        topIcon: 19,
                        height: 40,
                        profileLogo: const AssetImage('assets/image/Rectangle 6.png'),
                        like: false,
                      ),
                      Divider(
                        color: const Color(0xff1E1E1E).withOpacity(0.20),
                        thickness: 2,
                      ).paddingOnly(top: 22),
                      CommonComments(
                        topImage: 22,
                        topProfile: 24,
                        topUsername: 25,
                        topIcon: 26,
                        height: 40,
                        profileLogo: const AssetImage('assets/image/Rectangle 7.png'),
                        like: false,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 38,
                              alignment: Alignment.center,
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  labelText: CT.typing,
                                ),
                              ),
                            ).paddingOnly(left: 10, bottom: 30, top: 10),
                          ),
                          SizedBox(
                            width: 26,
                            height: 26,
                            child: Image.asset('assets/image/send.png'),
                          ).paddingOnly(bottom: 15, left: 7, right: 7),
                        ],
                      ).paddingOnly(top: 190),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}