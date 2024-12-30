import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/TextStyle.dart';

class SavedPostScreen extends StatefulWidget {
  const SavedPostScreen({Key? key}) : super(key: key);

  @override
  State<SavedPostScreen> createState() => _SavedPostScreenState();
}

class _SavedPostScreenState extends State<SavedPostScreen>{

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
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      height: 40,
                      width: 40,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/image/PostLogo.png'),
                      ),
                    ).paddingOnly(left: 25),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'AP Top 26',
                                style: TextStyle(fontWeight: FontWeight.w900),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 7),
                                padding: const EdgeInsets.all(2),
                                decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                                child: const Icon(Icons.check, color: Colors.white, size: 10),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text('Starprospect'),
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
                  child: Image.asset('assets/image/image 25.png'),
                ).paddingOnly(left: 25,top: 15,right: 25),
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
                    Row(
                      children: const [
                        Expanded(
                          child: Text(
                            'March Madness | 2022 NCAA Tournament Get the latest NCAA basketball tournament news, game schedules, predictions, and scores throughout March Madness with AP News.',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ).paddingOnly(left: 10, top: 8),
                    Row(children: const [
                      Text("By"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '@JohnDoeAP',
                        style: TextStyle(color: Colors.blue),
                      )
                    ]).paddingOnly(left: 10, top: 8),
                  ],
                ).paddingOnly(left: 35,right: 37),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ).paddingOnly(right: 5),
                    ),
                    const Text(
                      '15',
                      style: TextStyle(fontSize: 14),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 15,
                      height: 17,
                      child: GestureDetector(
                        onTap: (){},
                        child: Image.asset('assets/image/loop.png'),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                      height: 15,
                      child: GestureDetector(
                        //onTap: onTapLike,
                        child: Image.asset('assets/image/save.png'),
                      ),
                    ).paddingOnly(
                      left: 19,
                      right: 18,
                    ),
                    SizedBox(
                      width: 16,
                      height: 17,
                      child: GestureDetector(
                        onTap: (){},
                        child: Image.asset('assets/image/share.png'),
                      ),
                    ).paddingOnly(right: 13),
                  ],
                ).paddingOnly(left: 25, right: 25, top: 25),
                GestureDetector(
                  onTap: (){},
                  child: const Text("View all 10 comments").paddingOnly(left: 25, top: 10, right: 220),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        // Image.asset('assets/image/Rectangle 4.png',height: 26).paddingOnly(top: 39),
                        const SizedBox(
                          height: 26,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/image/Rectangle 4.png'),
                          ),
                        ).paddingOnly(top: 15),
                        const Text(
                          'John doe',
                          style: TU.bsBTN,
                        ).paddingOnly(top: 17, left: 17),
                        Text(
                          '@Johndoe',
                          style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff6A6E83)),
                        ).paddingOnly(left: 5, top: 18),
                        const Padding(
                            padding: EdgeInsets.only(left: 110, top: 19),
                            child: Icon(Icons.favorite_border)
                        ),
                      ],
                    ),
                    Text(
                      'Lorem Ipsum has been the industrys \nstandard dummy ever since the 1500s.',
                      style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff6A6E83)),
                    ).paddingOnly(top: 3, right: 25, left: 50),
                    Row(
                      children: [
                        Text(
                          '15 Likes',
                          style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff6A6E83)),
                        ),
                        Text(
                          '13 Replies',
                          style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff6A6E83)),
                        ).paddingOnly(left: 19),
                        Text(
                          'Reply',
                          style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff6A58FB)),
                        ).paddingOnly(left: 19),
                        Text(
                          '5 Hr ago',
                          style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff6A6E83)),
                        ).paddingOnly(left: 55),
                      ],
                    ).paddingOnly(top: 8, left: 55),
                  ],
                ).paddingOnly(left: 17,top: 20,right: 17),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 38,
                        alignment: Alignment.center,
                        child: const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Type something....',
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
                ).paddingOnly(top: 50,left: 25,right: 25,bottom: 20),
              ],
            )//8169797025   8104580332
          ],
        ),
      ),
    );
  }

}