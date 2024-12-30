import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/CommonCard.dart';
import 'package:starprospect/utility/TextStyle.dart';

class TeamMembers extends StatefulWidget {
  const TeamMembers({Key? key}) : super(key: key);

  @override
  State<TeamMembers> createState() => _TeamMembersState();
}

class _TeamMembersState extends State<TeamMembers>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                  'Coaches (1)',
                  style: TU.bsBTN.copyWith(color: const Color(0xff7B838A)),
                ).paddingOnly(right: 250,top: 25),
                Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/image/Rectangle 6.png'),
                    ),
                    title: Text(
                      'John Doe',
                      style: TU.smTxtBtn2.copyWith(fontSize: 16,color: Colors.black),
                    ),
                    onTap: () {},
                  ),
                ).paddingOnly(top: 12),
                Text(
                  'Players (8)',
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
                ).paddingOnly(bottom: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }

}