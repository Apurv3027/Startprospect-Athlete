import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/TextStyle.dart';

class ProfileViewDeals extends StatefulWidget {
  const ProfileViewDeals({Key? key}) : super(key: key);

  @override
  _ProfileViewDealsState createState() => _ProfileViewDealsState();
}

class _ProfileViewDealsState extends State<ProfileViewDeals>{

  int? value = 1;

  // single choice value
  int tag = 3;

  List<String> chips = [
    "General",//1
    "Beauty/makeup",//2
    "Fashion",//3
    "Tech",//4
    "Health/Fitness/Food",//5
    "Dance",//6
    "Meme",//7
    "Travel",//8
    "Family",//9
    "Gaming",//10
    "Athletes/Sports",//11
    "Comedy",//12
    "Theme",//13
    "Finance/Stocks/Crypto",//14
    "Food",//15
    "Pets",//16
    "Blog",//17
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Text(
                  'Social Media Platforms',
                style: TU.bsBTN,
              ).paddingOnly(right: 175,top: 16),
              Row(
                children: [
                  Image.asset('assets/image/Instagram.png',height: 30,width: 30,),
                  Text(
                    'Post | Story | Reels',
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  Text(
                    '\$50.00',
                    style: TU.bsBTN.copyWith(fontSize: 14),
                  ).paddingOnly(left: 115),
                ],
              ).paddingOnly(top: 14),
              Row(
                children: [
                  Image.asset('assets/image/Facebook (1).png',height: 30,width: 30,),
                  Text(
                    'Post | Story',
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  Text(
                    '\$100.00',
                    style: TU.bsBTN.copyWith(fontSize: 14),
                  ).paddingOnly(left: 159),
                ],
              ).paddingOnly(top: 14),
              Row(
                children: [
                  Image.asset('assets/image/Tik Tok.png',height: 30,width: 30,),
                  Text(
                    'Post | Audio',
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  Text(
                    '\$90.00',
                    style: TU.bsBTN.copyWith(fontSize: 14),
                  ).paddingOnly(left: 162),
                ],
              ).paddingOnly(top: 14),
              Row(
                children: [
                  Image.asset('assets/image/YouTube.png',height: 30,width: 30,),
                  Text(
                    'Post | Audio',
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  Text(
                    '\$150.00',
                    style: TU.bsBTN.copyWith(fontSize: 14),
                  ).paddingOnly(left: 156),
                ],
              ).paddingOnly(top: 14),
              Row(
                children: [
                  Image.asset('assets/image/linkedin.png',height: 30,width: 30,),
                  Text(
                    'Post | Audio',
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  Text(
                    '\$70.00',
                    style: TU.bsBTN.copyWith(fontSize: 14),
                  ).paddingOnly(left: 163),
                ],
              ).paddingOnly(top: 14),
              Row(
                children: [
                  Image.asset('assets/image/Twitter.png',height: 30,width: 30,),
                  Text(
                    'Post | Fleet',
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  Text(
                    '\$250.00',
                    style: TU.bsBTN.copyWith(fontSize: 14),
                  ).paddingOnly(left: 161),
                ],
              ).paddingOnly(top: 14),
              Row(
                children: [
                  Image.asset('assets/image/twitter (1).png',height: 30,width: 30,),
                  Text(
                    'Podcast | Interview | \nMeet — Up | Photo/video/audio',
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 9),
                  // Column(
                  //   children: [
                  //     Text(
                  //       'Podcast | Interview | ',
                  //       style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                  //     ),
                  //     Text(
                  //       'Meet — Up | Photo/video/audio',
                  //       style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                  //     ),
                  //   ],
                  // ).paddingOnly(left: 9),
                  Text(
                    '\$190.00',
                    style: TU.bsBTN.copyWith(fontSize: 14),
                  ).paddingOnly(left: 19),
                ],
              ).paddingOnly(top: 14),
              const Text(
                'Niche',
                style: TU.bsBTN,
              ).paddingOnly(right: 313,top: 20),
              // Wrap(
              //   children: List<Widget>.generate(
              //     17,
              //         (int index) {
              //       return ChoiceChip(
              //         label: Text('Item $index'),
              //         selected: _value == index,
              //         onSelected: (bool selected) {
              //           setState(() {
              //             _value = selected ? index : null;
              //           });
              //         },
              //       );
              //     },
              //   ).toList(),
              // ),
              // ChipsChoice<int>.single(
              //   value: tag,
              //   onChanged: (val) => setState(() => tag = val),
              //   choiceItems: C2Choice.listFrom<int, String>(
              //     source: chips,
              //     //value: (i, v) => i,
              //     value: (index, item) => index,
              //     //label: (i, v) => v,
              //     label: (index, item) => item,
              //     //tooltip: (i, v) => v,
              //     tooltip: (index, item) => item,
              //   ),
              //   choiceStyle: const C2ChoiceStyle(
              //     borderRadius: BorderRadius.all(
              //       Radius.circular(10),
              //     ),
              //   ),
              //   wrapped: true,
              // ),
              ChipList(
                shouldWrap: true,
                listOfChipNames: chips,
                style: TU.bsBTN.copyWith(fontSize: 12),
                activeBgColorList: [Colors.grey.withOpacity(0.1)],
                inactiveBgColorList: [Colors.grey.withOpacity(0.1)],
                activeTextColorList: const [Color(0xff000000)],
                inactiveTextColorList: const [Color(0xff000000)],
                listOfChipIndicesCurrentlySeclected: [0],
                activeBorderColorList: const [Colors.blue],
                inactiveBorderColorList: const [Colors.grey],
              ).paddingOnly(right: 55),
            ],
          ),
        ),
      ),
    );
  }

}