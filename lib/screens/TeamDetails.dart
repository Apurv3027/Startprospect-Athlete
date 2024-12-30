import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/TabController.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/TextStyle.dart';

class TeamDetails extends StatefulWidget {
  const TeamDetails({Key? key}) : super(key: key);

  @override
  State<TeamDetails> createState() => _TeamDetailsState();
}

class _TeamDetailsState extends State<TeamDetails>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          toolbarHeight: 75,
          actions: [
            IconButton(
              onPressed: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Center(
                        child: Text(
                            'Leave Team',
                            style: TU.smTxtBtn2.copyWith(color: Colors.black,fontSize: 22),
                        ),
                    ),
                    content: const Text(
                        'Are you sure you want to leave this team?',
                        style: TU.fpMainEx,
                    ),
                    actions: [
                      Row(
                        children: [
                          Container(
                            width: 115,
                            height: 50,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(12.0))
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                Get.back();
                              },
                              child: Center(
                                child: Text(
                                  'Cancel',
                                  style: TU.txtButton.copyWith(color: Colors.black),
                                ),
                              ),
                            ),
                          ).paddingOnly(left: 10),
                          Container(
                            width: 115,
                            height: 50,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(12.0))
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff6A58FB),
                              ),
                              onPressed: () {
                                Get.back();
                              },
                              child: Center(
                                child: Text(
                                  'Yes',
                                  style: TU.txtButton.copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                          ).paddingOnly(right: 10,left: 10),
                        ],
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.exit_to_app_rounded),
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xff6a58fb),
                  Color(0xff4599f4),
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/image/TeamLogo.png'),
                  ).paddingOnly(right: 157,left: 158),
                ),
                Text(
                  'Fearless Wizards',
                  style: TU.smTxtBtn2.copyWith(fontSize: 22, color: Colors.white),
                ),
                Row(
                  children: [
                    Text(
                      'Baseball',
                      style: TU.fpMainEx.copyWith(color: Colors.white),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 7),
                      width: 5.0,
                      height: 5.0,
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                    ),
                    Text(
                      'Spring 2022',
                      style: TU.fpMainEx.copyWith(color: Colors.white),
                    ),
                  ],
                ).paddingOnly(top: 10,left: 100,right: 85),
                Container(
                  width: 191,
                  height: 45,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12.0))
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Center(
                      child: Text(
                        'Join Team',
                        style: TU.bsBTN,
                      ),
                    ).paddingAll(10),
                  ),
                ).paddingOnly(top: 10),
              ],
            ).paddingOnly(top: 30),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: CU.colorFFFFFF,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
        ),
        padding: const EdgeInsets.only(left: 0, right: 0),
          child: const TeamTabControl().paddingOnly(top: 10),
      ),
      // body: CustomScrollView(
      //   slivers: [
      //     SliverAppBar(
      //       pinned: true,
      //       snap: false,
      //       floating: true,
      //       expandedHeight: 150,
      //       actions: [
      //         IconButton(
      //             onPressed: () {},
      //             icon: const Icon(Icons.exit_to_app_rounded),
      //         ),
      //       ],
      //       flexibleSpace: FlexibleSpaceBar(
      //         background: Container(
      //           decoration: BoxDecoration(
      //             gradient: LinearGradient(
      //               begin: Alignment.centerLeft,
      //               end: Alignment.centerRight,
      //               colors: CU.background,
      //             ),
      //           ),
      //           child: Column(
      //             children: [
      //               SizedBox(
      //                 height: 60,
      //                 child: const CircleAvatar(
      //                   backgroundImage: AssetImage('assets/image/TeamLogo.png'),
      //                 ).paddingOnly(right: 157,left: 158),
      //               ),
      //               Text(
      //                 'Fearless Wizards',
      //                 style: TU.smTxtBtn2.copyWith(fontSize: 22, color: Colors.white),
      //               ),
      //               Row(
      //                 children: [
      //                   Text(
      //                     'Baseball',
      //                     style: TU.fpMainEx.copyWith(color: Colors.white),
      //                   ),
      //                   Container(
      //                     margin: const EdgeInsets.symmetric(horizontal: 7),
      //                     width: 5.0,
      //                     height: 5.0,
      //                     decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      //                   ),
      //                   Text(
      //                     'Spring 2022',
      //                     style: TU.fpMainEx.copyWith(color: Colors.white),
      //                   ),
      //                 ],
      //               ).paddingOnly(top: 15,left: 100,right: 85),
      //             ],
      //           ).paddingOnly(top: 66),
      //         ),
      //       ),
      //     ),
      //     SliverList(
      //       delegate: SliverChildBuilderDelegate(
      //             (BuildContext context, int index) {
      //           return Container(
      //             decoration: const BoxDecoration(
      //                 color: CU.colorFFFFFF,
      //                 borderRadius: BorderRadius.only(
      //                   topLeft: Radius.circular(20.0),
      //                   topRight: Radius.circular(20.0),
      //                 )),
      //             padding: const EdgeInsets.only(left: 0, right: 0),
      //             child: const Padding(
      //               padding: EdgeInsets.only(left: 15, right: 15),
      //               child: TeamTabControl(),
      //             ),
      //           );
      //         },
      //         childCount: 1,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }

}