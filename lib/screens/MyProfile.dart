import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/MyProfileAbout.dart';
import 'package:starprospect/screens/MyProfileDeals.dart';
import 'package:starprospect/screens/MyProfileNewsFeed.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> with SingleTickerProviderStateMixin {

  int currentIndex = 0;
  late TabController _tabProfileController;

  @override
  void initState() {
    _tabProfileController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabProfileController.dispose();
  }

  // final tabs = [
  //   const HomeLatest(), //0
  //   const HomeLatest(), //1
  //   const HomeLatest(), //2
  //   const HomeLatest(), //3
  //   const HomeLatest(), //4
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1.5,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset('assets/image/image 9.png'),
                  ),
                  const Positioned(
                    top: 95,
                    left: 165,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('assets/image/logo1.png'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    CT.user,
                    style: TU.cardName.copyWith(fontSize: 20),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 7),
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                    child: const Icon(Icons.check, color: Colors.white, size: 10),
                  ),
                ],
              ).paddingOnly(top: 50,left: 150,right: 120),
              Text(
                CT.chipFoot,
                style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
              ).paddingOnly(top: 10,left: 170,right: 157),
              Text(
                CT.profileANG,
                style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
              ).paddingOnly(top: 10,left: 155,right: 140),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: 5,
                  //itemCount: TopTradingList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 95,
                      width: 80,
                      child: Card(
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/Instagram.png',
                                height: 25,
                              ).paddingOnly(top: 13),
                              Text(
                                CT.instaFollowers,
                                style: TU.smTxtBtn.copyWith(fontSize: 14,color: const Color(0xff333333)),
                              ).paddingOnly(top: 6),
                              const Text(
                                CT.instaUserName,
                                style: TU.smTxt,
                              ).paddingOnly(top: 5),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ).paddingOnly(top: 20,left: 15,right: 15),
              Row(
                children: [
                  const Icon(Icons.school_outlined),
                  Text(
                    CT.sclEX,
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 11),
                ],
              ).paddingOnly(top: 20,left: 16,right: 155),
              Row(
                children: [
                  const Icon(Icons.location_on_outlined),
                  Text(
                    CT.locationEX,
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 15),
                ],
              ).paddingOnly(top: 12,left: 15,right: 225),
              Row(
                children: [
                  const Icon(Icons.groups_outlined),
                  Text(
                    CT.clubName,
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 12),
                ],
              ).paddingOnly(top: 12,left: 19,right: 88),
              Row(
                children: [
                  const Icon(Icons.star,color: Color(0xffFFC107),),
                  Text(
                    CT.reviews,
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff6A58FB)),
                  ).paddingOnly(left: 10),
                ],
              ).paddingOnly(top: 12,left: 20,right: 184),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TabBar(
                  isScrollable: false,
                  controller: _tabProfileController,
                  // give the indicator a decoration (color and border radius)
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelColor: const Color(0xff6A58FB),
                  unselectedLabelColor: const Color(0xff7B838A),
                  tabs: const [
                    Tab(
                      text: CT.newsFeed,
                    ),
                    Tab(
                      text: CT.deals,
                    ),
                    Tab(
                      text: CT.about,
                    ),
                  ],
                ),
              ).paddingOnly(top: 10, left: 5, right: 5, bottom: 12),
              // tab bar view here
              Expanded(
                child: TabBarView(
                  controller: _tabProfileController,
                  children: const [
                    MyProfileNewsFeed(),
                    MyProfileDeals(),
                    MyProfileAbout(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // body: SingleChildScrollView(
      //   child: Container(
      //     //color: pageColor,
      //     decoration: BoxDecoration(
      //       //color: Color(0xff6A58FB),
      //         gradient: LinearGradient(
      //           begin: Alignment.centerLeft,
      //           end: Alignment.centerRight,
      //           colors: CU.background,
      //         )),
      //     child: Column(
      //       children: [
      //         Expanded(
      //           child: Container(
      //             decoration: BoxDecoration(
      //                 color: Colors.white.withOpacity(0.9),
      //                 borderRadius: const BorderRadius.only(
      //                     topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      //             child: Center(
      //               child: Column(
      //                 children: [
      //                   Stack(
      //                     alignment: Alignment.center,
      //                     clipBehavior: Clip.none,
      //                     children: [
      //                       ClipRRect(
      //                         borderRadius: const BorderRadius.only(
      //                           topLeft: Radius.circular(10),
      //                           topRight: Radius.circular(10),
      //                         ),
      //                         child: Image.asset('assets/image/image 9.png'),
      //                       ),
      //                       const Positioned(
      //                         top: 95,
      //                         left: 165,
      //                         child: CircleAvatar(
      //                           radius: 45,
      //                           backgroundImage: AssetImage('assets/image/logo1.png'),
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                   Row(
      //                     children: [
      //                       Text(
      //                         'John Deo',
      //                         style: TU.cardName.copyWith(fontSize: 20),
      //                       ),
      //                       Container(
      //                         margin: const EdgeInsets.symmetric(horizontal: 7),
      //                         padding: const EdgeInsets.all(2),
      //                         decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
      //                         child: const Icon(Icons.check, color: Colors.white, size: 10),
      //                       ),
      //                     ],
      //                   ).paddingOnly(top: 50,left: 150,right: 120),
      //                   Text(
      //                     'Football',
      //                     style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
      //                   ).paddingOnly(top: 10,left: 170,right: 157),
      //                   Text(
      //                     'Male • 16y/o',
      //                     style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
      //                   ).paddingOnly(top: 10,left: 155,right: 140),
      //                   SizedBox(
      //                     height: 100,
      //                     child: ListView.builder(
      //                       itemCount: 5,
      //                       //itemCount: TopTradingList.length,
      //                       shrinkWrap: true,
      //                       scrollDirection: Axis.horizontal,
      //                       itemBuilder: (context, index) {
      //                         return SizedBox(
      //                           height: 95,
      //                           width: 80,
      //                           child: Card(
      //                             child: Center(
      //                               child: Column(
      //                                 children: [
      //                                   Image.asset(
      //                                     'assets/image/Instagram.png',
      //                                     height: 25,
      //                                   ).paddingOnly(top: 13),
      //                                   Text(
      //                                     '12.3K',
      //                                     style: TU.smTxtBtn.copyWith(fontSize: 14,color: const Color(0xff333333)),
      //                                   ).paddingOnly(top: 6),
      //                                   const Text(
      //                                     'johndoe31',
      //                                     style: TU.smTxt,
      //                                   ).paddingOnly(top: 5),
      //                                 ],
      //                               ),
      //                             ),
      //                           ),
      //                         );
      //                       },
      //                     ),
      //                   ).paddingOnly(top: 20,left: 15,right: 15),
      //                   Row(
      //                     children: [
      //                       SizedBox(
      //                         width: 175,
      //                         height: 35,
      //                         child: OutlinedButton(
      //                           onPressed: () {},
      //                           style: OutlinedButton.styleFrom(
      //                             shape: const RoundedRectangleBorder(
      //                               borderRadius: BorderRadius.all(Radius.circular(12)),
      //                             ),
      //                             side: const BorderSide(color: Color(0xff6A58FB)),
      //                           ),
      //                           child: Row(
      //                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                             children: <Widget>[
      //                               const Image(
      //                                 image: AssetImage('assets/image/favorite.png'),
      //                                 height: 15,
      //                                 width: 18,
      //                               ),
      //                               Text(
      //                                 'Favorite',
      //                                 style: TU.cardName.copyWith(color: const Color(0xff6A58FB)),
      //                               ),
      //                             ],
      //                           ),
      //                         ),
      //                       ),
      //                       SizedBox(
      //                         width: 175,
      //                         height: 35,
      //                         child: OutlinedButton(
      //                           onPressed: () {},
      //                           style: OutlinedButton.styleFrom(
      //                             shape: const RoundedRectangleBorder(
      //                               borderRadius: BorderRadius.all(Radius.circular(12)),
      //                             ),
      //                             side: const BorderSide(color: Color(0xff6A58FB)),
      //                           ),
      //                           child: Text(
      //                             'Message',
      //                             style: TU.cardName.copyWith(color: const Color(0xff6A58FB)),
      //                           ),
      //                         ),
      //                       ).paddingOnly(left: 10),
      //                     ],
      //                   ).paddingOnly(left: 15,right: 15,top: 20),
      //                   Row(
      //                     children: [
      //                       const Icon(Icons.school_outlined),
      //                       Text(
      //                         'Houston Victoria School',
      //                         style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
      //                       ).paddingOnly(left: 11),
      //                     ],
      //                   ).paddingOnly(top: 20,left: 16,right: 155),
      //                   Row(
      //                     children: [
      //                       const Icon(Icons.location_on_outlined),
      //                       Text(
      //                         'Newyork, USA',
      //                         style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
      //                       ).paddingOnly(left: 15),
      //                     ],
      //                   ).paddingOnly(top: 12,left: 15,right: 225),
      //                   Row(
      //                     children: [
      //                       const Icon(Icons.groups_outlined),
      //                       Text(
      //                         'Basketball-Golden State Warriors',
      //                         style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
      //                       ).paddingOnly(left: 12),
      //                     ],
      //                   ).paddingOnly(top: 12,left: 19,right: 88),
      //                   Row(
      //                     children: [
      //                       const Icon(Icons.star,color: Color(0xffFFC107),),
      //                       Text(
      //                         '4.5 ( 120+ Reviews )',
      //                         style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff6A58FB)),
      //                       ).paddingOnly(left: 10),
      //                     ],
      //                   ).paddingOnly(top: 12,left: 20,right: 184),
      //                   Container(
      //                     height: 50,
      //                     decoration: BoxDecoration(
      //                       color: const Color(0xffFFFFFF),
      //                       borderRadius: BorderRadius.circular(15),
      //                     ),
      //                     child: TabBar(
      //                       isScrollable: false,
      //                       controller: _tabProfileController,
      //                       // give the indicator a decoration (color and border radius)
      //                       indicator: BoxDecoration(
      //                         borderRadius: BorderRadius.circular(15),
      //                       ),
      //                       labelColor: const Color(0xff6A58FB),
      //                       unselectedLabelColor: const Color(0xff7B838A),
      //                       tabs: const [
      //                         Tab(
      //                           text: 'Newsfeed',
      //                         ),
      //                         Tab(
      //                           text: 'Deals',
      //                         ),
      //                         Tab(
      //                           text: 'About',
      //                         ),
      //                       ],
      //                     ),
      //                   ).paddingOnly(top: 10, left: 5, right: 5, bottom: 18),
      //                   const Divider(thickness: 3),
      //                   Expanded(
      //                     child: TabBarView(
      //                       controller: _tabProfileController,
      //                       children: const [
      //                         Center(
      //                           child: HomeLatest(),
      //                         ),
      //                         Center(
      //                           child: HomeAthletes(),
      //                         ),
      //                         Center(
      //                           child: HomeLatest(),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

}