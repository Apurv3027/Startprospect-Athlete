import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/HomePage.dart';
import 'package:starprospect/utility/CommonBottomSheet.dart';
import 'package:starprospect/utility/CommonButton.dart';
import 'package:starprospect/utility/CommonDropDown.dart';

import 'TextStyle.dart';

String? dropdownvalue = 'Athletes';

//Post Card View
CommonPost({
  required void Function()? onTapCard,
  required void Function()? onTapLike,
  required void Function()? onTapRePost,
  required void Function()? onTapComments,
  required void Function()? onTapShare,
  AssetImage? profileLogo,
  Image? postImage,
  String? profileName,
  String? txtPosition,
  String? dis1,
  Icon? check,
  Color? checkColor,
}) {
  return GestureDetector(
    onTap: onTapCard,
    child: Card(
      shape: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Colors.white)),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      shadowColor: Colors.black,
      elevation: 5,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: profileLogo,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          profileName!,
                          style: const TextStyle(fontWeight: FontWeight.w900),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 7),
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(shape: BoxShape.circle, color: checkColor),
                          child: check,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(txtPosition!),
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
              PopupMenuButton(
                shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gapPadding: 10,
                  borderSide: BorderSide(color: Color(0xffffffff)),
                ),
                position: PopupMenuPosition.under,
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {
                        Get.back();
                        CommonShowModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (BuildContext) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.75,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.blue, width: 3),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                              child: Column(
                                children: [
                                  Center(
                                    child: Image.asset(
                                      'assets/image/Rectangle 5201.png',
                                      height: 4,
                                      width: 50,
                                    ).paddingOnly(
                                      top: 20,
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      'Report Post',
                                      style: TU.appBarActionTxt.copyWith(color: Colors.black, fontSize: 14),
                                    ).paddingOnly(
                                      top: 17,
                                      bottom: 17,
                                    ),
                                  ),
                                  const Divider(
                                    height: 0.5,
                                    thickness: 1,
                                  ),
                                  const Text(
                                    'Reason for reporting ',
                                    style: TU.bsBTN,
                                  ).paddingOnly(top: 21, left: 15, right: 192),
                                  const Text(
                                    'Your report is anonymous. If someone is in immediate danger, call the local emergency services, don’t wait',
                                    style: TU.smTxt,
                                  ).paddingOnly(top: 5, left: 15, right: 25),
                                  const Text(
                                    'It’s spam',
                                    style: TU.smTxt2,
                                  ).paddingOnly(top: 27, left: 16, right: 300),
                                  GestureDetector(
                                    child: const Text(
                                      'Nudity or sexual content',
                                      style: TU.smTxt2,
                                    ),
                                    onTap: () {
                                      //Navigator.pop(context);
                                      Get.back();
                                      CommonShowModalBottomSheet(
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (BuildContext) {
                                          return Container(
                                            height: MediaQuery.of(context).size.height * 0.75,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(color: Colors.blue, width: 3),
                                                borderRadius: const BorderRadius.only(
                                                    topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                                            child: Column(
                                              children: [
                                                Center(
                                                  child: Image.asset(
                                                    'assets/image/Rectangle 5201.png',
                                                    height: 4,
                                                    width: 50,
                                                  ).paddingOnly(
                                                    top: 20,
                                                  ),
                                                ),
                                                Center(
                                                  child: Text(
                                                    'Report Post',
                                                    style:
                                                        TU.appBarActionTxt.copyWith(color: Colors.black, fontSize: 14),
                                                  ).paddingOnly(
                                                    top: 17,
                                                    bottom: 17,
                                                  ),
                                                ),
                                                const Divider(
                                                  height: 0.5,
                                                  thickness: 1,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Reason for report',
                                                      style: TU.appBarActionTxt
                                                          .copyWith(color: Colors.black, fontSize: 14),
                                                    ).paddingOnly(right: 220, bottom: 15),
                                                    CommonDropDownButton(
                                                      value: dropdownvalue,
                                                      //isExpanded: true,
                                                      icon: const Icon(
                                                        Icons.arrow_drop_down,
                                                        color: Color(0xff333333),
                                                      ),
                                                      style: TU.dropDown,
                                                      onChanged: (String? newValue) {},
                                                      items: <String>['Athletes', 'Cricket', 'Swimming', 'Yoga']
                                                          .map<DropdownMenuItem<String>>((String value) {
                                                        return DropdownMenuItem<String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                    ),
                                                    Text(
                                                      'Reason for report',
                                                      style: TU.appBarActionTxt
                                                          .copyWith(color: Colors.black, fontSize: 14),
                                                    ).paddingOnly(right: 219, top: 15),
                                                    TextField(
                                                      decoration: InputDecoration(
                                                        contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                                        hintText: 'Please explain the reason',
                                                        hintStyle: const TextStyle(fontSize: 15),
                                                        border: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(12.0)),
                                                      ),
                                                      keyboardType: TextInputType.multiline,
                                                      maxLines: 3,
                                                    ).paddingOnly(top: 15, bottom: 15),
                                                    CommonButton(
                                                      txt: 'Submit',
                                                      onPressed: () {
                                                        Navigator.of(context).pushAndRemoveUntil(
                                                            MaterialPageRoute(
                                                              builder: (context) => const HomePage(),
                                                            ),
                                                            (route) => false);
                                                      },
                                                    ),
                                                  ],
                                                ).paddingOnly(top: 20, left: 15, right: 15, bottom: 30),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ).paddingOnly(top: 25, left: 16, right: 197),
                                  const Text(
                                    'Hate speech or symbols',
                                    style: TU.smTxt2,
                                  ).paddingOnly(top: 25, left: 15, right: 193),
                                  const Text(
                                    'False information',
                                    style: TU.smTxt2,
                                  ).paddingOnly(top: 35, left: 16, right: 245),
                                  const Text(
                                    'Bullying or harassment',
                                    style: TU.smTxt2,
                                  ).paddingOnly(top: 26, left: 16, right: 205),
                                  const Text(
                                    'Violence or dangerous organization',
                                    style: TU.smTxt2,
                                  ).paddingOnly(top: 25, left: 16, right: 115),
                                  const Text(
                                    'Scam or fraud',
                                    style: TU.smTxt2,
                                  ).paddingOnly(top: 25, left: 16, right: 265),
                                  const Text(
                                    'Something else',
                                    style: TU.smTxt2,
                                  ).paddingOnly(top: 25, left: 16, right: 260),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Report Post',
                        style: TU.appBarActionTxt.copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                ],
                onSelected: (value) {},
              )
            ],
          ).paddingAll(10),
          ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: postImage,
          ).paddingAll(10),
          Row(
            children: [
              GestureDetector(
                onTap: onTapLike,
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
                  onTap: onTapRePost,
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
                  onTap: onTapShare,
                  child: Image.asset('assets/image/share.png'),
                ),
              ).paddingOnly(right: 13),
            ],
          ).paddingOnly(left: 10, right: 10, top: 10),
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
                children: [
                  Expanded(
                    child: Text(
                      dis1!,
                      style: const TextStyle(fontSize: 15),
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
          ),
          GestureDetector(
            onTap: onTapComments,
            child: const Text("View all 10 comments").paddingOnly(left: 10, top: 15, right: 215),
          ),
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
          )
        ],
      ),
    ),
  );
}

//Profile Card View
CommonProfileCard({
  required void Function()? onPressed,
  AssetImage? profileLogo,
  String? profileName,
  String? txtPosition,
}) {
  return SizedBox(
    height: 242,
    width: 185,
    child: Card(
      shadowColor: Colors.black,
      elevation: 5,
      child: Column(
        children: <Widget>[
          Row(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: profileLogo,
                ),
              ).paddingOnly(top: 15, left: 42),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.close,
                  size: 15,
                ).paddingOnly(right: 15, bottom: 70, left: 5),
              ),
            ],
          ),
          Text(
            profileName!,
            style: TU.cardName,
          ).paddingOnly(top: 10, left: 53, right: 49),
          Text(
            txtPosition!,
            style: TU.cardDis,
          ).paddingOnly(top: 6, left: 62, right: 58),
          SizedBox(
            height: 35,
            child: BtnFavorite(
              txt: 'Favorite',
              onPressed: onPressed,
            ),
          ).paddingOnly(top: 20, left: 10, right: 8, bottom: 10),
        ],
      ),
    ),
  );
}

CommonInfoCard({
  required void Function()? onTap,
  AssetImage? profileLogo,
  Image? bacImage,
}) {
  return SizedBox(
    height: 300,
    child: GestureDetector(
      onTap: onTap,
      child: Card(
        shadowColor: Colors.black,
        elevation: 5,
        shape: Border(left: BorderSide()),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: bacImage,
                ),
                Positioned(
                  top: 100,
                  left: 15,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: profileLogo,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'John Deo',
                            style: TU.bsBTN,
                          ).paddingOnly(left: 7, top: 10, right: 85),
                          Text(
                            'Houston Victoria School',
                            style: TU.smTxt.copyWith(color: const Color(0xff333333)),
                          ).paddingOnly(left: 7, top: 6),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 235,
                  child: Image.asset(
                    'assets/image/rate.png',
                    height: 26,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'Sports : ',
                  style: TU.smTxt,
                ),
                Text(
                  'Football | Baseball | Cricket | Rugby',
                  style: TU.bsBTN.copyWith(fontSize: 11),
                ),
              ],
            ).paddingOnly(top: 60, left: 15, right: 33),
            Row(
              children: [
                const Text(
                  'Language: ',
                  style: TU.smTxt,
                ),
                Text(
                  'English',
                  style: TU.bsBTN.copyWith(fontSize: 10),
                ),
                const Text(
                  'Age: ',
                  style: TU.smTxt,
                ).paddingOnly(left: 9),
                Text(
                  '23',
                  style: TU.bsBTN.copyWith(fontSize: 10),
                ),
                const Text(
                  'Gender: ',
                  style: TU.smTxt,
                ).paddingOnly(left: 10),
                Text(
                  'Male',
                  style: TU.bsBTN.copyWith(fontSize: 10),
                ),
              ],
            ).paddingOnly(top: 5, left: 15),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 15,
                ),
                const Text(
                  'Newyork, USA',
                  style: TU.smTxt,
                ).paddingOnly(left: 9),
                const Text(
                  'Total Followers',
                  style: TU.smTxt,
                ).paddingOnly(left: 27),
                const Text(
                  '250M+',
                  style: TU.smTxtBtn2,
                ).paddingOnly(left: 8),
              ],
            ).paddingOnly(top: 10, left: 23),
            Row(
              children: [
                const Text(
                  'Platform: ',
                  style: TU.smTxt,
                ).paddingOnly(top: 18),
                Image.asset(
                  'assets/image/Frame 4535566.png',
                  height: 25,
                ).paddingOnly(top: 13, left: 5),
                const Text(
                  'Engagement: ',
                  style: TU.smTxt,
                ).paddingOnly(left: 45, top: 20),
                const Text(
                  '2.5%',
                  style: TU.smTxtBtn2,
                ).paddingOnly(left: 6, top: 18),
              ],
            ).paddingOnly(left: 10),
          ],
        ),
      ),
    ),
  );
}

CommonInfoCard2({
  required void Function()? onTap,
  AssetImage? profileLogo,
  Image? bacImage,
}) {
  return SizedBox(
    height: 300,
    width: 314,
    child: GestureDetector(
      onTap: onTap,
      child: Card(
        shadowColor: Colors.black,
        elevation: 5,
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: Colors.grey,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: bacImage,
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 15,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: profileLogo,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'John Deo',
                            style: TU.bsBTN,
                          ).paddingOnly(left: 7, top: 10, right: 85),
                          Text(
                            'Houston Victoria School',
                            style: TU.smTxt.copyWith(color: const Color(0xff333333)),
                          ).paddingOnly(left: 7, top: 6),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 185,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/image/rate.png',
                        height: 26,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'Sports : ',
                  style: TU.smTxt,
                ),
                Text(
                  'Football | Baseball | Cricket | Rugby',
                  style: TU.bsBTN.copyWith(fontSize: 11),
                ),
              ],
            ).paddingOnly(top: 60, left: 15, right: 15),
            Row(
              children: [
                const Text(
                  'Language: ',
                  style: TU.smTxt,
                ),
                Text(
                  'English',
                  style: TU.bsBTN.copyWith(fontSize: 11),
                ),
                const Text(
                  'Age: ',
                  style: TU.smTxt,
                ).paddingOnly(left: 9),
                Text(
                  '23',
                  style: TU.bsBTN.copyWith(fontSize: 11),
                ),
                const Text(
                  'Gender: ',
                  style: TU.smTxt,
                ).paddingOnly(left: 10),
                Text(
                  'Male',
                  style: TU.bsBTN.copyWith(fontSize: 11),
                ),
              ],
            ).paddingOnly(top: 8, left: 15),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 15,
                ),
                const Text(
                  'Newyork, USA',
                  style: TU.smTxt,
                ).paddingOnly(left: 9),
                const Text(
                  'Total Followers',
                  style: TU.smTxt,
                ).paddingOnly(left: 20),
                const Text(
                  '250M+',
                  style: TU.smTxtBtn2,
                ).paddingOnly(left: 5),
              ],
            ).paddingOnly(top: 10, left: 15),
            Row(
              children: [
                const Text(
                  'Platform: ',
                  style: TU.smTxt,
                ).paddingOnly(top: 18),
                Image.asset(
                  'assets/image/Frame 4535566.png',
                  height: 25,
                ).paddingOnly(top: 13, left: 5),
                const Text(
                  'Engagement: ',
                  style: TU.smTxt,
                ).paddingOnly(left: 30, top: 20),
                const Text(
                  '2.5%',
                  style: TU.smTxtBtn2,
                ).paddingOnly(left: 6, top: 18),
              ],
            ).paddingOnly(left: 10),
          ],
        ),
      ),
    ),
  );
}

CommonDealCard({
  required void Function()? onTap,
  // AssetImage? profileLogo,
  Image? bacImage,
}) {
  return SizedBox(
    width: 360,
    height: 244,
    child: GestureDetector(
      onTap: onTap,
      child: Card(
        shadowColor: Colors.black,
        elevation: 5,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/image/image 12.png',
                  height: 87,
                  width: 87,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/image/image 28.png',
                          height: 28,
                          width: 28,
                        ),
                        Text(
                          'Wally Energy Bareisu....',
                          style: TU.bsBTN.copyWith(fontSize: 14),
                        ).paddingOnly(left: 9),
                      ],
                    ).paddingOnly(left: 10),
                    Row(
                      children: [
                        Text(
                          'Price :',
                          style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                        ),
                        Text(
                          '\$785.00',
                          style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff6A58FB)),
                        ).paddingOnly(left: 122),
                      ],
                    ).paddingOnly(left: 10, top: 10),
                    Row(
                      children: [
                        Text(
                          'Content Duration :',
                          style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                        ),
                        Text(
                          '7 days',
                          style: TU.bsBTN.copyWith(fontSize: 12),
                        ).paddingOnly(left: 49),
                      ],
                    ).paddingOnly(left: 10, top: 7),
                    Row(
                      children: [
                        Text(
                          'Deals :',
                          style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                        ),
                        Text(
                          'Non-Negotiable',
                          style: TU.bsBTN.copyWith(fontSize: 12),
                        ).paddingOnly(left: 63),
                      ],
                    ).paddingOnly(left: 10, top: 7),
                  ],
                ),
              ],
            ),
            Text(
              'Lorem Ipsum is simply dummy text of...',
              style: TU.bsBTN.copyWith(fontSize: 13),
            ).paddingOnly(top: 5, right: 40),
            Text(
              'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only f...',
              style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
            ).paddingOnly(top: 5),
            Row(
              children: [
                const Text(
                  'Available on :',
                  style: TU.smTxt,
                ).paddingOnly(top: 13),
                Image.asset(
                  'assets/image/Frame 4535566.png',
                  height: 25,
                ).paddingOnly(top: 5, left: 163),
              ],
            ),
          ],
        ).paddingAll(10),
      ),
    ),
  );
}

CommonComments({
  AssetImage? profileLogo,
  double? height,
  double topImage = 0.0,
  double topProfile = 0.0,
  double topUsername = 0.0,
  double topIcon = 0.0,
  bool like = false,
}) {
  return Column(
    children: [
      Row(
        children: [
          // Image.asset('assets/image/Rectangle 4.png',height: 26).paddingOnly(top: 39),
          SizedBox(
            height: height,
            child: CircleAvatar(
              backgroundImage: profileLogo,
            ),
          ).paddingOnly(top: topImage),
          const Text(
            'John doe',
            style: TU.bsBTN,
          ).paddingOnly(top: topProfile, left: 17),
          Text(
            '@Johndoe',
            style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff6A6E83)),
          ).paddingOnly(left: 5, top: topUsername),
          Padding(
            padding: EdgeInsets.only(left: 121, top: topIcon),
            child: like == true ?
            const Icon(Icons.favorite,color: Colors.red,)
                : const Icon(Icons.favorite_border)
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
          ).paddingOnly(left: 66),
        ],
      ).paddingOnly(top: 8, left: 55),
    ],
  );
}

CommonSocialMedia({
  AssetImage? socialMedia,
  String? txt,
  double? height,
  double topImage = 0.0,
  double leftImage = 0.0,
  double topText = 0.0,
  double leftText = 0.0,
}) {
  return Column(
    children: [
      SizedBox(
        height: height,
        child: CircleAvatar(
          backgroundImage: socialMedia,
        ),
      ).paddingOnly(top: topImage, left: leftImage),
      Text(
        txt!,
        style: TU.smTxt,
      ).paddingOnly(top: topText, left: leftText),
    ],
  );
}

CommonOfferCard({
  required void Function()? onTap,
  Color? color,
  String? txt,
}) {
  return SizedBox(
    width: 400,
    height: 289,
    child: GestureDetector(
      onTap: onTap,
      child: Card(
          shadowColor: Colors.black,
          elevation: 5,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/image/image 12.png',
                    height: 87,
                    width: 87,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/image/image 28.png',
                            height: 28,
                            width: 28,
                          ),
                          Column(
                            children: [
                              Text(
                                'Wally Energy Bareisu....',
                                style: TU.bsBTN.copyWith(fontSize: 14),
                              ).paddingOnly(left: 9),
                              Container(
                                height: 18,
                                width: 110,
                                decoration: BoxDecoration(
                                    color: color, borderRadius: const BorderRadius.all(Radius.circular(12.0))),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  child: Text(
                                    txt!,
                                    style: TU.smTxtBtn2.copyWith(color: const Color(0xffF5F6F7)),
                                  ),
                                ),
                              ).paddingOnly(top: 4, right: 60),
                            ],
                          ),
                        ],
                      ).paddingOnly(left: 10),
                      Row(
                        children: [
                          Text(
                            'Price :',
                            style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                          ),
                          Text(
                            '\$785.00',
                            style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff6A58FB)),
                          ).paddingOnly(left: 122),
                        ],
                      ).paddingOnly(left: 10, top: 5),
                      Row(
                        children: [
                          Text(
                            'Content Duration :',
                            style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                          ),
                          Text(
                            '7 days',
                            style: TU.bsBTN.copyWith(fontSize: 12),
                          ).paddingOnly(left: 49),
                        ],
                      ).paddingOnly(left: 10, top: 7),
                      Row(
                        children: [
                          Text(
                            'Deals :',
                            style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                          ),
                          Text(
                            'Non-Negotiable',
                            style: TU.bsBTN.copyWith(fontSize: 12),
                          ).paddingOnly(left: 63),
                        ],
                      ).paddingOnly(left: 10, top: 7),
                    ],
                  ),
                ],
              ),
              Text(
                'Lorem Ipsum is simply dummy text of...',
                style: TU.bsBTN.copyWith(fontSize: 14),
              ).paddingOnly(top: 10, right: 35),
              Text(
                'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only f...',
                style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
              ).paddingOnly(top: 5),
              Row(
                children: [
                  const Text(
                    'Available on :',
                    style: TU.smTxt,
                  ).paddingOnly(top: 5),
                  Image.asset(
                    'assets/image/Frame 4535566.png',
                    height: 25,
                  ).paddingOnly(top: 5, left: 163),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 152,
                    height: 25,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        side: const BorderSide(color: Color(0xff7B838A)),
                      ),
                      child: Text(
                        'Decline',
                        style: TU.cardName.copyWith(color: const Color(0xff7B838A)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 152,
                    height: 25,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        side: const BorderSide(color: Color(0xff7B838A)),
                      ),
                      child: const Text(
                        'Accept',
                        style: TU.cardName,
                      ),
                    ),
                  ).paddingOnly(left: 10),
                ],
              ).paddingOnly(top: 5),
            ],
          ).paddingAll(10)),
    ),
  );
}

CommonOfferRequestCard({
  required void Function()? onTap,
  Color? color,
  String? txt,
}) {
  return SizedBox(
    width: 360,
    height: 243,
    child: GestureDetector(
      onTap: onTap,
      child: Card(
          shadowColor: Colors.black,
          elevation: 5,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/image/image 12.png',
                    height: 87,
                    width: 87,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/image/image 28.png',
                            height: 28,
                            width: 28,
                          ),
                          Column(
                            children: [
                              Text(
                                'Wally Energy Bareisu....',
                                style: TU.bsBTN.copyWith(fontSize: 14),
                              ).paddingOnly(left: 9),
                              Container(
                                height: 15,
                                width: 130,
                                decoration: BoxDecoration(
                                    color: color, borderRadius: const BorderRadius.all(Radius.circular(12.0))),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  child: Text(
                                    txt!,
                                    style: TU.smTxtBtn2.copyWith(color: const Color(0xffF5F6F7)),
                                  ),
                                ),
                              ).paddingOnly(top: 4, right: 50),
                            ],
                          ),
                        ],
                      ).paddingOnly(left: 10),
                      Row(
                        children: [
                          Text(
                            'Price :',
                            style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                          ),
                          Text(
                            '\$785.00',
                            style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff6A58FB)),
                          ).paddingOnly(left: 122),
                        ],
                      ).paddingOnly(left: 10, top: 5),
                      Row(
                        children: [
                          Text(
                            'Content Duration :',
                            style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                          ),
                          Text(
                            '7 days',
                            style: TU.bsBTN.copyWith(fontSize: 12),
                          ).paddingOnly(left: 49),
                        ],
                      ).paddingOnly(left: 10, top: 5),
                      Row(
                        children: [
                          Text(
                            'Deals :',
                            style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                          ),
                          Text(
                            'Non-Negotiable',
                            style: TU.bsBTN.copyWith(fontSize: 12),
                          ).paddingOnly(left: 63),
                        ],
                      ).paddingOnly(left: 10, top: 5),
                    ],
                  ),
                ],
              ),
              Text(
                'Lorem Ipsum is simply dummy text of...',
                style: TU.bsBTN.copyWith(fontSize: 14),
              ).paddingOnly(top: 10, right: 35),
              Text(
                'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only f...',
                style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
              ).paddingOnly(top: 2),
              Row(
                children: [
                  const Text(
                    'Available on :',
                    style: TU.smTxt,
                  ).paddingOnly(top: 5),
                  Image.asset(
                    'assets/image/Frame 4535566.png',
                    height: 25,
                  ).paddingOnly(top: 5, left: 163),
                ],
              ),
            ],
          ).paddingAll(10)),
    ),
  );
}

CommonCollegesTeamCard({
  required void Function()? onTap,
  bool show = false,
}) {
  return Card(
    child: ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/image/TeamLogo.png'),
      ),
      title: Row(
        children: [
          Text(
            'Fearless Wizards',
            style: TU.smTxtBtn2.copyWith(fontSize: 14, color: Colors.black),
          ),
          show == true ?
            Container(
              height: 18,
              width: 80,
              decoration: const BoxDecoration(
                  color: Color(0xff7B838A), borderRadius: BorderRadius.all(Radius.circular(12.0))),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'Joined',
                  style: TU.smTxtBtn2.copyWith(color: const Color(0xffF5F6F7)),
                ),
              ),
            ).paddingOnly(left: 45)
              : const SizedBox(),
        ],
      ).paddingOnly(top: 10),
      subtitle: Column(
        children: [
          Row(
            children: [
              const Text(
                'Baseball',
                style: TU.smTxt,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 7),
                width: 5.0,
                height: 5.0,
                decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              ),
              const Text(
                'Spring 2022',
                style: TU.smTxt,
              ),
            ],
          ).paddingOnly(top: 10,right: 90),
          const Text(
            'Santa Barbara, US',
            style: TU.smTxt,
          ).paddingOnly(top: 10,right: 145),
        ],
      ),
      onTap: onTap,
    ),
  );
}

CommonCollegesEventCard({
  required void Function()? onTap,
  bool? show,
}) {
  return Card(
    child: ListTile(
      leading: Column(
        children: [
          const Text(
            'SAT',
            style: TU.smTxt,
          ),
          Text(
            '30',
            style: TU.smTxtBtn2.copyWith(fontSize: 18, color: Colors.black),
          )
        ],
      ).paddingOnly(top: 12),
      title: Text(
        'Fearless Wizards',
        style: TU.smTxtBtn2.copyWith(fontSize: 14, color: Colors.black),
      ).paddingOnly(top: 10),
      subtitle: const Text(
        'Practice',
        style: TU.smTxt,
      ).paddingOnly(top: 10,right: 145),
      onTap: () {},
    ),
  );
}

CommonLikeCard({
  required void Function()? onTap,
  AssetImage? profile,
  String? profileName,
  String? userName,
  String? position,
}) {
  return Card(
    child: ListTile(
      leading: CircleAvatar(
        backgroundImage: profile,
      ),
      title: Text(
        profileName!,
        style: TU.bsBTN,
      ),
      trailing: Text(
        position!,
        style: TU.smTxt2.copyWith(color: const Color(0xff7B838A)),
      ),
      subtitle: Text(
        userName!,
        style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff6A6E83)),
      ),
      onTap: onTap,
    ),
  );
}

CommonPlayerCard({
  required void Function()? onTap,
}) {
  return Card(
    child: ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/image/Rectangle 6.png'),
      ),
      title: Text(
        'John Doe',
        style: TU.smTxtBtn2.copyWith(fontSize: 16,color: Colors.black),
      ),
      trailing: Text(
        '#01',
        style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
      ),
      onTap: () {},
    ),
  );
}

CommonTeamUpdateCard({
  required void Function()? onTap,
}) {
  return SizedBox(
    height: 102,
    child: Card(
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/image/PostLogo.png'),
            ),
            title: Text(
              'John Doe',
              style: TU.bsBTN.copyWith(fontSize: 14),
            ),
            trailing: Text(
              '15h',
              style: TU.bsBTN.copyWith(fontSize: 12),
            ),
          ),
          Text(
            'Lee Rose, who coached Charlotte and Purdue to the mens Final Four, has dies at the age of 85.',
            style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
          ).paddingOnly(left: 15,right: 15),
        ],
      ),
    ),
  );
}

CommonProfilePost({
  required void Function()? onTapCard,
  AssetImage? profileLogo,
  Image? postImage,
  String? profileName,
  String? txtPosition,
  String? dis1,
}) {
  return GestureDetector(
    onTap: onTapCard,
    child: Card(
      shape: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Colors.white)),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      shadowColor: Colors.black,
      elevation: 5,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: profileLogo,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profileName!,
                      style: const TextStyle(fontWeight: FontWeight.w900),
                    ),
                    Row(
                      children: [
                        Text(txtPosition!),
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
              PopupMenuButton(
                shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gapPadding: 10,
                  borderSide: BorderSide(color: Color(0xffffffff)),
                ),
                position: PopupMenuPosition.under,
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Edit',
                        style: TU.appBarActionTxt.copyWith(color: Colors.black),
                      ).paddingOnly(right: 50),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Delete Post',
                        style: TU.appBarActionTxt.copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                ],
                onSelected: (value) {},
                // onSelected: (value) {
                //   if(value == 1){
                //     const LoginScreen();
                //   } else if(value == 2){
                //     const LoginScreen();
                //   }
                // },
              )
            ],
          ).paddingAll(10),
          ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: postImage,
          ).paddingAll(10),
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
          ).paddingOnly(left: 10, right: 10, top: 10),
          GestureDetector(
            onTap: (){},
            child: const Text("View all 10 comments").paddingOnly(left: 10, top: 15, right: 220),
          ),
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
                children: [
                  Expanded(
                    child: Text(
                      dis1!,
                      style: const TextStyle(fontSize: 15),
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
              ]).paddingOnly(left: 10, top: 8,bottom: 15),
            ],
          ),
        ],
      ),
    ),
  );
}