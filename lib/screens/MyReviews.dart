import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/TextStyle.dart';
import '../utility/CommonAppBar.dart';

class MyReviews extends StatefulWidget {
  const MyReviews({Key? key}) : super(key: key);

  @override
  State<MyReviews> createState() => _MyReviewsState();
}

class _MyReviewsState extends State<MyReviews> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: 'My Reviews',
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/image/Group Reviews.png').paddingOnly(left: 15,top: 15,right: 15),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            height: 40,
                            width: 40,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/image/Rectangle 8.png'),
                            ),
                          ).paddingOnly(left: 10),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Michael Fisher',
                                    style: TU.smTxtBtn2.copyWith(fontSize: 14,color: Colors.black),
                                  ).paddingOnly(left: 10),
                                  Text(
                                    '04 April, 2022',
                                    style: TU.smTxt2.copyWith(color: Colors.grey,fontSize: 12),
                                  ).paddingOnly(left: 95),
                                ],
                              ),
                              Image.asset('assets/image/rates.png',height: 14).paddingOnly(right: 210,top: 6),
                            ],
                          ),
                        ],
                      ).paddingOnly(top: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and \ntypesetting industry. Lorem Ipsum has been the \nindustrys standard dummy text ever since the 1500s.',
                        style: TU.smTxt2.copyWith(color: Colors.grey,fontSize: 12),
                      ).paddingOnly(top: 10,bottom: 10),
                    ],
                  ),
                ).paddingOnly(left: 15,right: 15);
              },
            ),
            // Card(
            //   child: Column(
            //     children: [
            //       Row(
            //         children: [
            //           const SizedBox(
            //             height: 40,
            //             width: 40,
            //             child: CircleAvatar(
            //               radius: 30,
            //               backgroundImage: AssetImage('assets/image/Rectangle 8.png'),
            //             ),
            //           ).paddingOnly(left: 10),
            //           Column(
            //             children: [
            //               Row(
            //                 children: [
            //                   Text(
            //                     'Michael Fisher',
            //                     style: TU.smTxtBtn2.copyWith(fontSize: 14,color: Colors.black),
            //                   ).paddingOnly(left: 10),
            //                   Text(
            //                     '04 April, 2022',
            //                     style: TU.smTxt2.copyWith(color: Colors.grey,fontSize: 12),
            //                   ).paddingOnly(left: 95),
            //                 ],
            //               ),
            //               Image.asset('assets/image/rates.png',height: 14).paddingOnly(right: 210,top: 6),
            //             ],
            //           ),
            //         ],
            //       ).paddingOnly(top: 10),
            //       Text(
            //         'Lorem Ipsum is simply dummy text of the printing and \ntypesetting industry. Lorem Ipsum has been the \nindustrys standard dummy text ever since the 1500s.',
            //         style: TU.smTxt2.copyWith(color: Colors.grey,fontSize: 12),
            //       ).paddingOnly(top: 10,bottom: 10),
            //     ],
            //   ),
            // ).paddingOnly(left: 15,right: 15),
          ],
        ),
      ),
    );
  }
}