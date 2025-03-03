import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/CollegeTeamDetails.dart';
import 'package:starprospect/screens/TeamDetails.dart';
import 'package:starprospect/utility/CommonCard.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class CollegesTeams extends StatefulWidget {
  const CollegesTeams({Key? key}) : super(key: key);

  @override
  State<CollegesTeams> createState() => _CollegesTeamsState();
}

class _CollegesTeamsState extends State<CollegesTeams>{

  final TextEditingController _searchViewController = TextEditingController();

  // show the btn or not
  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                controller: _searchViewController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  hintText: CT.search,
                  hintStyle: const TextStyle(fontSize: 15),
                  prefixIcon: const Icon(Icons.search),
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                ),
              ),
              Text(
                  CT.yourTeam,
                style: TU.txtButton.copyWith(color: const Color(0xff7B838A)),
              ).paddingOnly(top: 15,right: 271),
              // Card(
              //   child: ListTile(
              //     leading: const CircleAvatar(
              //       backgroundImage: AssetImage('assets/image/TeamLogo.png'),
              //     ),
              //     title: Row(
              //       children: [
              //         Text(
              //           'Fearless Wizards',
              //           style: TU.smTxtBtn2.copyWith(fontSize: 14, color: Colors.black),
              //         ),
              //         Container(
              //           height: 18,
              //           width: 80,
              //           decoration: const BoxDecoration(
              //               color: Color(0xff7B838A), borderRadius: BorderRadius.all(Radius.circular(12.0))),
              //           child: OutlinedButton(
              //             onPressed: () {},
              //             child: Text(
              //               'Joined',
              //               style: TU.smTxtBtn2.copyWith(color: const Color(0xffF5F6F7)),
              //             ),
              //           ),
              //         ).paddingOnly(left: 45),
              //       ],
              //     ).paddingOnly(top: 10),
              //     subtitle: Column(
              //       children: [
              //         Row(
              //           children: [
              //             const Text(
              //               'Baseball',
              //               style: TU.smTxt,
              //             ),
              //             Container(
              //               margin: const EdgeInsets.symmetric(horizontal: 7),
              //               width: 5.0,
              //               height: 5.0,
              //               decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              //             ),
              //             const Text(
              //               'Spring 2022',
              //               style: TU.smTxt,
              //             ),
              //           ],
              //         ).paddingOnly(top: 10,right: 90),
              //         const Text(
              //           'Santa Barbara, US',
              //           style: TU.smTxt,
              //         ).paddingOnly(top: 10,right: 145),
              //       ],
              //     ),
              //     onTap: () {},
              //   ),
              // ).paddingOnly(top: 15),
              CommonCollegesTeamCard(
                onTap: () {
                  Get.to(const TeamDetails());
                },
                show: true,
              ),
              Text(
                  CT.collegeTeam,
                style: TU.txtButton.copyWith(color: const Color(0xff7B838A)),
              ).paddingOnly(top: 15,right: 239),
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.vertical,
                //scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CommonCollegesTeamCard(
                    onTap: () {
                      Get.to(const CollegeTeamDetails());
                    },
                    show: false,
                  );
                },
              ).paddingOnly(top: 15),
            ],
          ).paddingOnly(bottom: 10),
        ),
      ),
    );
  }

}