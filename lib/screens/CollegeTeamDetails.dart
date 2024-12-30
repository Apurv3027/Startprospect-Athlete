import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/CommonCard.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class CollegeTeamDetails extends StatefulWidget {
  const CollegeTeamDetails({Key? key}) : super(key: key);

  @override
  State<CollegeTeamDetails> createState() => _CollegeTeamDetailsState();
}

class _CollegeTeamDetailsState extends State<CollegeTeamDetails>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: CU.background,
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
                      CT.collegeTeamName,
                      style: TU.smTxtBtn2.copyWith(fontSize: 22, color: Colors.white),
                    ),
                    Row(
                      children: [
                        Text(
                          CT.sportType,
                          style: TU.fpMainEx.copyWith(color: Colors.white),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 7),
                          width: 5.0,
                          height: 5.0,
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                        ),
                        Text(
                          CT.year,
                          style: TU.fpMainEx.copyWith(color: Colors.white),
                        ),
                      ],
                    ).paddingOnly(top: 10,left: 100,right: 85),
                    Container(
                      width: 191,
                      height: 40,
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
                            CT.joinTeam,
                            style: TU.bsBTN,
                          ),
                        ).paddingAll(10),
                      ),
                    ).paddingOnly(top: 15),
                  ],
                ).paddingOnly(top: 30),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  decoration: const BoxDecoration(
                      color: CU.colorFFFFFF,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      )),
                  padding: const EdgeInsets.only(left: 0, right: 0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          CT.teamCoaches,
                          style: TU.bsBTN.copyWith(color: const Color(0xff7B838A)),
                        ).paddingOnly(right: 250,top: 25),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: AssetImage('assets/image/Rectangle 6.png'),
                            ),
                            title: Text(
                              CT.user,
                              style: TU.smTxtBtn2.copyWith(fontSize: 16,color: Colors.black),
                            ),
                            onTap: () {},
                          ),
                        ).paddingOnly(top: 12),
                        Text(
                          CT.teamPlayers,
                          style: TU.bsBTN.copyWith(color: const Color(0xff7B838A)),
                        ).paddingOnly(top: 25),
                        ListView.builder(
                          itemCount: 8,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return CommonPlayerCard(
                              onTap: () {},
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
    // return Scaffold(
    //   appBar: PreferredSize(
    //       preferredSize: const Size.fromHeight(200),
    //       child: AppBar(
    //         toolbarHeight: 75,
    //         flexibleSpace: Container(
    //           decoration: const BoxDecoration(
    //             gradient: LinearGradient(
    //               colors: <Color>[
    //                 Color(0xff6a58fb),
    //                 Color(0xff4599f4),
    //               ],
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
    //               Container(
    //                 width: 191,
    //                 height: 36,
    //                 decoration: const BoxDecoration(
    //                     color: Colors.white,
    //                     borderRadius: BorderRadius.all(Radius.circular(12.0))
    //                 ),
    //                 child: ElevatedButton(
    //                   style: ElevatedButton.styleFrom(
    //                     backgroundColor: Colors.white,
    //                   ),
    //                   onPressed: () {},
    //                   child: const Center(
    //                     child: Text(
    //                       'Join Team',
    //                       style: TU.bsBTN,
    //                     ),
    //                   ).paddingAll(10),
    //                 ),
    //               ).paddingOnly(top: 15),
    //             ],
    //           ).paddingOnly(top: 65),
    //         ),
    //       ),
    //   ),
    //   body: SingleChildScrollView(
    //     child: Container(
    //       decoration: BoxDecoration(
    //           gradient: LinearGradient(
    //             begin: Alignment.centerLeft,
    //             end: Alignment.centerRight,
    //             colors: CU.background,
    //           )),
    //       child: Container(
    //         decoration: const BoxDecoration(
    //             color: CU.colorFFFFFF,
    //             borderRadius: BorderRadius.only(
    //               topLeft: Radius.circular(20.0),
    //               topRight: Radius.circular(20.0),
    //             )),
    //         padding: const EdgeInsets.only(left: 0, right: 0),
    //         child: Padding(
    //           padding: const EdgeInsets.only(left: 15, right: 15),
    //           child: Column(
    //             mainAxisSize: MainAxisSize.max,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 'Coaches (1)',
    //                 style: TU.bsBTN.copyWith(color: const Color(0xff7B838A)),
    //               ).paddingOnly(right: 266,top: 25),
    //               Card(
    //                 child: ListTile(
    //                   leading: const CircleAvatar(
    //                     backgroundImage: AssetImage('assets/image/Rectangle 6.png'),
    //                   ),
    //                   title: Text(
    //                     'John Doe',
    //                     style: TU.smTxtBtn2.copyWith(fontSize: 16,color: Colors.black),
    //                   ),
    //                   onTap: () {},
    //                 ),
    //               ).paddingOnly(top: 12),
    //               Text(
    //                 'Players (8)',
    //                 style: TU.bsBTN.copyWith(color: const Color(0xff7B838A)),
    //               ).paddingOnly(right: 266,top: 25),
    //               ListView.builder(
    //                 itemCount: 8,
    //                 shrinkWrap: true,
    //                 physics: const NeverScrollableScrollPhysics(),
    //                 itemBuilder: (context, index) {
    //                   return CommonPlayerCard(
    //                     onTap: () {},
    //                   );
    //                 },
    //               ).paddingOnly(top: 15),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }

}