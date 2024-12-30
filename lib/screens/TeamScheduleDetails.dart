import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/CommonCard.dart';

class TeamSchedule extends StatefulWidget {
  const TeamSchedule({Key? key}) : super(key: key);

  @override
  State<TeamSchedule> createState() => _TeamScheduleState();
}

class _TeamScheduleState extends State<TeamSchedule>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return CommonCollegesEventCard(
              onTap: () {},
            );
          },
        ).paddingOnly(top: 15),
      ),
    );
  }

}