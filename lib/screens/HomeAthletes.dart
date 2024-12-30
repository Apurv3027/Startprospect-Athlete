import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/FilterScreenAthletes.dart';
import 'package:starprospect/screens/ProfileView.dart';
import 'package:starprospect/utility/CommonButton.dart';
import 'package:starprospect/utility/CommonCard.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class HomeAthletes extends StatefulWidget {
  const HomeAthletes({Key? key}) : super(key: key);

  @override
  _HomeAthletesState createState() => _HomeAthletesState();
}

class _HomeAthletesState extends State<HomeAthletes> {
  TextEditingController _searchViewController = TextEditingController();
  //List TopTradingList = ['All','Basketball','Cricket','Tech','Fashion'];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.1),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 280,
                    height: 40,
                    child: TextField(
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
                  ),
                  // SizedBox(
                  //   height: 40,
                  //   width: 40,
                  //   child: Container(
                  //     decoration: const BoxDecoration(
                  //         borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  //     ),
                  //     child: OutlinedButton(
                  //       onPressed: () {},
                  //       child: const Icon(Icons.filter_alt_outlined),
                  //     ),
                  //   ).paddingOnly(left: 5,),
                  // ),
                  OutlinedButton(
                    onPressed: () {
                      Get.to(const FilterAthletes());
                    },
                    child: const ImageIcon(
                        AssetImage('assets/image/Filter.png'),
                        color: Color(0xff7B838A),
                    ),
                  ).paddingOnly(left: 5),
                ],
              ),
              Row(
                children: [
                  Text(
                    CT.fAthletes,
                    style: TU.cardName.copyWith(color: const Color(0xff7B838A), fontWeight: FontWeight.bold),
                  ).paddingOnly(right: 180),
                  Text(
                    CT.seeAll,
                    style: TU.bsBTN.copyWith(color: const Color(0xff6A58FB),fontSize: 14),
                  ),
                ],
              ).paddingOnly(top: 15),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CommonInfoCard2(
                      bacImage: Image.asset(
                        'assets/image/image 9.png',
                        width: double.infinity,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      profileLogo: const AssetImage('assets/image/logo1.png'),
                      onTap: () {
                        Get.to(const ProfileView());
                      },
                      // onTap: () {
                      //   Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileViewNewsFeed(),));
                      // },
                      // onTap: () {
                      //   Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileViewDeals(),));
                      // },
                      // onTap: () {
                      //   Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileViewAbout(),));
                      // },
                    );
                  },
                ),
              ).paddingOnly(top: 15),
              Text(
                CT.topTrend,
                style: TU.cardName.copyWith(color: const Color(0xff7B838A), fontWeight: FontWeight.bold),
              ).paddingOnly(right: 265,top: 25,bottom: 20),
              SizedBox(
                height: 35,
                child: ListView.builder(
                  itemCount: 1,
                  //itemCount: TopTradingList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ListBTN();
                    // return   ListBTN1(
                    //     onPressed: () {},
                    //     txt:TopTradingList[index]
                    // );
                  },
                ),
              ).paddingOnly(bottom: 20),
              CommonInfoCard(
                bacImage: Image.asset(
                  'assets/image/image 11.png',
                  width: double.infinity,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                profileLogo: const AssetImage('assets/image/logo1.png'),
                onTap: () {
                  Get.to(const ProfileView());
                },
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CommonInfoCard(
                    bacImage: Image.asset(
                      'assets/image/image 10.png',
                      width: double.infinity,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                    profileLogo: const AssetImage('assets/image/logo1.png'),
                    onTap: () {
                      Get.to(const ProfileView());
                    },
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ListBTN(){
  return Row(
    children: [
      ListBTN1(
          onPressed: () {},
          txt: CT.all
      ),
      const SizedBox(width: 5,),
      ListBTN2(
          onPressed: () {},
          txt: CT.trendBasket
      ),
      const SizedBox(width: 5,),
      ListBTN2(
          onPressed: () {},
          txt: CT.trendCricket
      ),
      const SizedBox(width: 5,),
      ListBTN2(
          onPressed: () {},
          txt: CT.trendTech
      ),
      const SizedBox(width: 5,),
      ListBTN2(
          onPressed: () {},
          txt: CT.trendFashion
      ),
    ],
  );
}