import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/models/Like.dart';
import 'package:starprospect/screens/Favorite.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({Key? key}) : super(key: key);

  @override
  State<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen>{

  TextEditingController _searchViewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CA(
      //   titleEx: 'Likes',
      //   style: const TextStyle(
      //     color: Color(0xffFFFFFF),
      //     fontFamily: 'SF UI Display',
      //     fontStyle: FontStyle.normal,
      //     fontWeight: FontWeight.w700,
      //     fontSize: 22,
      //   ),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Container(
          //color: pageColor,
          decoration: BoxDecoration(
            //color: Color(0xff6A58FB),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: CU.background,
              )),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_rounded, color: Colors.white, size: 24),
                  ).paddingOnly(top: 42, bottom: 10, right: 123),
                  const Text(
                    CT.fav,
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontFamily: 'SF UI Display',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ).paddingOnly(top: 30),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                    const BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(15),
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
                      ).paddingOnly(top: 10),
                      ListView.builder(
                        itemCount: lik.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return LikeCard(lik: lik[index]);
                        },
                      ).paddingOnly(top: 10),
                    ],
                  ),
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
      //         Row(
      //           children: [
      //             IconButton(
      //               onPressed: (){
      //                 Get.back();
      //               },
      //               icon: const Icon(Icons.arrow_back_rounded,color: Colors.white,size: 24),
      //             ).paddingOnly(top: 42,bottom: 10,right: 123),
      //             const Text(
      //               'Likes',
      //               style: TextStyle(
      //                 color: Color(0xffFFFFFF),
      //                 fontFamily: 'SF UI Display',
      //                 fontStyle: FontStyle.normal,
      //                 fontWeight: FontWeight.w700,
      //                 fontSize: 22,
      //               ),
      //             ).paddingOnly(top: 30),
      //           ],
      //         ),
      //         Container(
      //           decoration: BoxDecoration(
      //               color: Colors.white.withOpacity(0.9),
      //               borderRadius: const BorderRadius.only(
      //                   topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      //           child: Padding(
      //             padding: const EdgeInsets.all(15),
      //             child: Column(
      //               children: [
      //                 SizedBox(
      //                   height: 40,
      //                   child: TextField(
      //                     controller: _searchViewController,
      //                     decoration: InputDecoration(
      //                       contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
      //                       hintText: 'Search',
      //                       hintStyle: const TextStyle(fontSize: 15),
      //                       prefixIcon: const Icon(Icons.search),
      //                       border:
      //                       OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
      //                     ),
      //                   ),
      //                 ),
      //                 ListView.builder(
      //                   itemCount: lik.length,
      //                   shrinkWrap: true,
      //                   physics: const NeverScrollableScrollPhysics(),
      //                   itemBuilder: (context, index) {
      //                     return LikeCard(lik: lik[index]);
      //                   },
      //                 ).paddingOnly(top: 10),
      //                 // ListView.builder(
      //                 //   itemCount: 5,
      //                 //   shrinkWrap: true,
      //                 //   physics: const NeverScrollableScrollPhysics(),
      //                 //   itemBuilder: (context, index) {
      //                 //     // return CommonLikeCard(
      //                 //     //     onTap: () {},
      //                 //     //   profile: const AssetImage('assets/image/logo3.png'),
      //                 //     //   profileName: 'John Deo',
      //                 //     //   userName: '@johndoe',
      //                 //     //   position: 'Athlete',
      //                 //     // );
      //                 //     return LikeCard2();
      //                 //   },
      //                 // ).paddingOnly(top: 10),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

}

class LikeCard extends StatelessWidget {
  const LikeCard({Key? key, required this.lik}) : super(key: key);

  final Lik lik;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: lik.profile,
        ),
        title: Text(
          lik.ProfileName,
          style: TU.bsBTN,
        ),
        trailing: Text(
          lik.position,
          style: TU.smTxt2.copyWith(color: const Color(0xff7B838A)),
        ),
        subtitle: Text(
          lik.userName,
          style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff6A6E83)),
        ),
        onTap: (){
          Get.to(const Favorite());
        },
      ),
    );
  }
}


// LikeCard2(){
//   return Column(
//     children: [
//       CommonLikeCard(
//         onTap: () {},
//         profile: const AssetImage('assets/image/logo3.png'),
//         profileName: 'John Deo',
//         userName: '@johndoe',
//         position: 'Athlete',
//       ),
//       CommonLikeCard(
//         onTap: () {},
//         profile: const AssetImage('assets/image/logo4.png'),
//         profileName: 'Johnny Marca',
//         userName: '@johnny12',
//         position: 'Coach',
//       ),
//     ],
//   );
// }