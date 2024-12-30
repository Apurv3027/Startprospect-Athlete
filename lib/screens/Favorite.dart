import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

  final TextEditingController _searchViewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('assets/image/logo3.png'),
                        ),
                        title: const Text(
                          CT.user,
                          style: TU.bsBTN,
                        ),
                        // trailing: OutlinedButton(
                        //     onPressed: (){},
                        //     child: Row(
                        //       children: [
                        //         const Icon(Icons.favorite_outline_rounded,color: Color(0xff7B838A),),
                        //         const Text(
                        //             'Unfavorite',
                        //             style: TextStyle(
                        //               color: Color(0xff7B838A),
                        //             ),
                        //         ).paddingOnly(left: 5),
                        //       ],
                        //     ),
                        // ),
                        subtitle: Text(
                          CT.usernameEX,
                          style: TU.smTxt2.copyWith(color: const Color(0xff7B838A)),
                        ),
                        onTap: () {},
                      ).paddingOnly(top: 10),
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('assets/image/logo3.png'),
                        ),
                        title: const Text(
                          CT.user,
                          style: TU.bsBTN,
                        ),
                        trailing: Text(
                          CT.usernameEX,
                          style: TU.smTxt2.copyWith(color: const Color(0xff7B838A)),
                        ),
                        subtitle: Text(
                          CT.athletes,
                          style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff6A6E83)),
                        ),
                        onTap: () {},
                      ).paddingOnly(top: 8),
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('assets/image/logo3.png'),
                        ),
                        title: const Text(
                          CT.user,
                          style: TU.bsBTN,
                        ),
                        trailing: Text(
                          CT.usernameEX,
                          style: TU.smTxt2.copyWith(color: const Color(0xff7B838A)),
                        ),
                        subtitle: Text(
                          CT.athletes,
                          style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff6A6E83)),
                        ),
                        onTap: () {},
                      ).paddingOnly(top: 8),
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('assets/image/logo3.png'),
                        ),
                        title: const Text(
                          CT.user,
                          style: TU.bsBTN,
                        ),
                        trailing: Text(
                          CT.usernameEX,
                          style: TU.smTxt2.copyWith(color: const Color(0xff7B838A)),
                        ),
                        subtitle: Text(
                          CT.athletes,
                          style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff6A6E83)),
                        ),
                        onTap: () {},
                      ).paddingOnly(top: 8),
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('assets/image/logo3.png'),
                        ),
                        title: const Text(
                          CT.user,
                          style: TU.bsBTN,
                        ),
                        trailing: Text(
                          CT.usernameEX,
                          style: TU.smTxt2.copyWith(color: const Color(0xff7B838A)),
                        ),
                        subtitle: Text(
                          CT.athletes,
                          style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff6A6E83)),
                        ),
                        onTap: () {},
                      ).paddingOnly(top: 8),
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('assets/image/logo3.png'),
                        ),
                        title: const Text(
                          CT.user,
                          style: TU.bsBTN,
                        ),
                        trailing: Text(
                          CT.usernameEX,
                          style: TU.smTxt2.copyWith(color: const Color(0xff7B838A)),
                        ),
                        subtitle: Text(
                          CT.athletes,
                          style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff6A6E83)),
                        ),
                        onTap: () {},
                      ).paddingOnly(top: 8),
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('assets/image/logo3.png'),
                        ),
                        title: const Text(
                          CT.user,
                          style: TU.bsBTN,
                        ),
                        trailing: Text(
                          CT.usernameEX,
                          style: TU.smTxt2.copyWith(color: const Color(0xff7B838A)),
                        ),
                        subtitle: Text(
                          CT.athletes,
                          style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff6A6E83)),
                        ),
                        onTap: () {},
                      ).paddingOnly(top: 8),
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('assets/image/logo3.png'),
                        ),
                        title: const Text(
                          CT.user,
                          style: TU.bsBTN,
                        ),
                        trailing: Text(
                          CT.usernameEX,
                          style: TU.smTxt2.copyWith(color: const Color(0xff7B838A)),
                        ),
                        subtitle: Text(
                          CT.athletes,
                          style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff6A6E83)),
                        ),
                        onTap: () {},
                      ).paddingOnly(top: 8),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
