import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/TextStyle.dart';

class ProfileViewAbout extends StatefulWidget {
  const ProfileViewAbout({Key? key}) : super(key: key);

  @override
  _ProfileViewAboutState createState() => _ProfileViewAboutState();
}

class _ProfileViewAboutState extends State<ProfileViewAbout>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset('assets/image/bottom.png'),
                    Text(
                        'Improve your score by completing your profile and increasing your followers other platform',
                        style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff6A58FB)),
                    ).paddingOnly(left: 15,right: 15,top: 15),
                  ],
                ),
              ),
              const Text(
                'Additional Information',
                style: TU.bsBTN,
              ).paddingOnly(right: 160,top: 20),
              Row(
                children: [
                  Text(
                    'Birthday: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    '15-8-1989',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 185),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'Gender: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xffEB5757)),
                  ).paddingOnly(left: 9),
                  const Text(
                    'Male',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 233),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'Email: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    'marie_robinsin12@mail.com',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 62),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'Phone: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    '+1 254 854 1937',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 149),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'Faith: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    'Christian',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 217),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'Family Circle: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    'Lorem Ipsum',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 120),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'Academics: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    'Lorem Ipsum',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 135),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'Graduation Year: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    '2012',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 162),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'GPA: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    'C+',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 270),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'SAT: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    'Lorem',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 243),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'ACT: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    'Ipsum',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 243),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'Class Rank: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    '2nd',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 209),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'Class Size: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    'Lorem',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 195),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'Awards Honors: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    'Ipsum',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 154),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'NCAA Clearinghouse registered: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    'Yes',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 34),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'Athletics: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    'Basketball, Volleyball, etc.',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 48),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'Height: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    '5.5’',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 247),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'Weight: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    '48 kg',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 225),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'Event ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    '40 Dash',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 218),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'Position ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    'RB',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 244),
                ],
              ).paddingOnly(top: 15),
              Row(
                children: [
                  Text(
                    'School/Collage: ',
                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  const Text(
                    'Preparatory school',
                    style: TU.bsBTN,
                  ).paddingOnly(left: 53),
                ],
              ).paddingOnly(top: 15),
            ],
          ),
        ),
      ),
    );
  }

}