import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/RemoveParent.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/CommonBottomSheet.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';
import '../utility/CommonAppBar.dart';

class Invitation extends StatefulWidget {
  const Invitation({Key? key}) : super(key: key);

  @override
  State<Invitation> createState() => _InvitationState();
}

class _InvitationState extends State<Invitation> {

  bool _valueCheck1 = true;
  bool _valueCheck2 = false;
  bool _valueCheck3 = false;
  bool _valueCheck4 = false;
  bool _valueCheck5 = false;
  bool _valueCheck6 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: CT.invitation,
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 365,
                  height: 100,
                  child: Card(
                    shape: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/image/logo5.png',height: 48,).paddingOnly(left: 10,bottom: 42,top: 10),
                        Column(
                          children: [
                            Text(
                              CT.user,
                              style: TU.bsBTN.copyWith(fontSize: 14),
                            ).paddingOnly(right: 200,top: 12),
                            const Text(
                              CT.invitationRole,
                              style: TU.smTxt2,
                            ).paddingOnly(right: 189),
                            Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: (){},
                                    child: SizedBox(
                                      width: 100,
                                      height: 32,
                                      child: Text(
                                        CT.decline,
                                        style: TU.buttonStyle.copyWith(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                                      ).paddingOnly(top: 8,left: 27),
                                    ),
                                  ).paddingOnly(right: 17),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff6A58FB),
                                    ),
                                    onPressed: (){
                                      CommonShowModalBottomSheet(
                                        isScrollControlled: true,
                                        context: context,
                                        backgroundColor: Colors.transparent,
                                        builder: (BuildContext) {
                                          return Container(
                                            height: MediaQuery.of(context).size.height * 0.6,
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
                                                    height: 6,
                                                    width: 44,
                                                  ).paddingOnly(
                                                    top: 20,
                                                  ),
                                                ),
                                                Center(
                                                  child: Text(
                                                    CT.managePermission,
                                                    style: TU.smTxtBtn2.copyWith(color: Colors.black, fontSize: 20),
                                                  ).paddingOnly(
                                                    top: 17,
                                                    bottom: 17,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      checkColor: Colors.white,
                                                      value: _valueCheck1,
                                                      onChanged: (bool? value) {
                                                        // setState(() {
                                                        //   _valueCheck1 = value!;
                                                        // });
                                                      },
                                                    ),
                                                    Text(
                                                      CT.manageProfile,
                                                      style: TU.smTxt2.copyWith(fontSize: 15),
                                                    ).paddingOnly(right: 175),
                                                  ],
                                                ).paddingOnly(left: 41),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      checkColor: Colors.white,
                                                      value: _valueCheck2,
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          _valueCheck2 = value!;
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      CT.manageOffers,
                                                      style: TU.smTxt2.copyWith(fontSize: 15),
                                                    ).paddingOnly(right: 175),
                                                  ],
                                                ).paddingOnly(left: 41),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      checkColor: Colors.white,
                                                      value: _valueCheck3,
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          _valueCheck3 = value!;
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      CT.manageTeam,
                                                      style: TU.smTxt2.copyWith(fontSize: 15),
                                                    ).paddingOnly(right: 175),
                                                  ],
                                                ).paddingOnly(left: 41),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      checkColor: Colors.white,
                                                      value: _valueCheck4,
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          _valueCheck4 = value!;
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      CT.manageEvents,
                                                      style: TU.smTxt2.copyWith(fontSize: 15),
                                                    ).paddingOnly(right: 175),
                                                  ],
                                                ).paddingOnly(left: 41),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      checkColor: Colors.white,
                                                      value: _valueCheck5,
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          _valueCheck5 = value!;
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      'Wallet Manage',
                                                      style: TU.smTxt2.copyWith(fontSize: 15),
                                                    ).paddingOnly(right: 175),
                                                  ],
                                                ).paddingOnly(left: 41),
                                                const Divider(
                                                  height: 0.5,
                                                  thickness: 2,
                                                ).paddingOnly(left: 43,right: 43),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      checkColor: Colors.white,
                                                      value: _valueCheck6,
                                                      onChanged: (bool? value) {
                                                        // setState(() {
                                                        //   _valueCheck6 = value!;
                                                        // });
                                                      },
                                                    ),
                                                    Text(
                                                      CT.manageNotification,
                                                      style: TU.smTxt2.copyWith(fontSize: 15),
                                                    ).paddingOnly(right: 155),
                                                  ],
                                                ).paddingOnly(left: 41),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: CU.background,
                                                      ),
                                                      borderRadius: const BorderRadius.all(Radius.circular(10.0))
                                                  ),
                                                  child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor: const Color(0xff6A58FB),
                                                    ),
                                                    onPressed: (){
                                                      Get.back();
                                                      Get.to(const RemoveParent());
                                                    },
                                                    child: SizedBox(
                                                      height: 50,
                                                      child: Center(
                                                        child: Text(
                                                          CT.done,
                                                          style: TU.buttonStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                                                        ),
                                                      ).paddingAll(10),
                                                    ),
                                                  ),
                                                ).paddingOnly(top: 25,bottom: 20,left: 20,right: 20),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: SizedBox(
                                      width: 100,
                                      height: 32,
                                      child: Text(
                                        CT.accept,
                                        style: TU.buttonStyle.copyWith(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                                      ).paddingOnly(top: 8,left: 27),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ).paddingOnly(left: 10,),
                      ],
                    ),
                  ),
                );
              },
            ).paddingOnly(top: 15,left: 15,right: 15),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 365,
                  height: 100,
                  child: Card(
                    shape: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/image/logo6.png',height: 48,).paddingOnly(left: 10,bottom: 42,top: 10),
                        Column(
                          children: [
                            Text(
                              CT.user,
                              style: TU.bsBTN.copyWith(fontSize: 14),
                            ).paddingOnly(right: 200,top: 12),
                            const Text(
                              CT.invitationRole,
                              style: TU.smTxt2,
                            ).paddingOnly(right: 189),
                            Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: (){},
                                    child: SizedBox(
                                      width: 100,
                                      height: 32,
                                      child: Text(
                                        CT.decline,
                                        style: TU.buttonStyle.copyWith(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                                      ).paddingOnly(top: 8,left: 27),
                                    ),
                                  ).paddingOnly(right: 17),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff6A58FB),
                                    ),
                                    onPressed: (){
                                      CommonShowModalBottomSheet(
                                        isScrollControlled: true,
                                        context: context,
                                        backgroundColor: Colors.transparent,
                                        builder: (BuildContext) {
                                          return Container(
                                            height: MediaQuery.of(context).size.height * 0.6,
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
                                                    height: 6,
                                                    width: 44,
                                                  ).paddingOnly(
                                                    top: 20,
                                                  ),
                                                ),
                                                Center(
                                                  child: Text(
                                                    CT.managePermission,
                                                    style: TU.smTxtBtn2.copyWith(color: Colors.black, fontSize: 20),
                                                  ).paddingOnly(
                                                    top: 17,
                                                    bottom: 17,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      checkColor: Colors.white,
                                                      value: _valueCheck1,
                                                      onChanged: (bool? value) {
                                                        // setState(() {
                                                        //   _valueCheck1 = value!;
                                                        // });
                                                      },
                                                    ),
                                                    Text(
                                                      CT.manageProfile,
                                                      style: TU.smTxt2.copyWith(fontSize: 15),
                                                    ).paddingOnly(right: 175),
                                                  ],
                                                ).paddingOnly(left: 41),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      checkColor: Colors.white,
                                                      value: _valueCheck2,
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          _valueCheck2 = value!;
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      CT.manageOffers,
                                                      style: TU.smTxt2.copyWith(fontSize: 15),
                                                    ).paddingOnly(right: 175),
                                                  ],
                                                ).paddingOnly(left: 41),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      checkColor: Colors.white,
                                                      value: _valueCheck3,
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          _valueCheck3 = value!;
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      CT.manageTeam,
                                                      style: TU.smTxt2.copyWith(fontSize: 15),
                                                    ).paddingOnly(right: 175),
                                                  ],
                                                ).paddingOnly(left: 41),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      checkColor: Colors.white,
                                                      value: _valueCheck4,
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          _valueCheck4 = value!;
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      CT.manageEvents,
                                                      style: TU.smTxt2.copyWith(fontSize: 15),
                                                    ).paddingOnly(right: 175),
                                                  ],
                                                ).paddingOnly(left: 41),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      checkColor: Colors.white,
                                                      value: _valueCheck5,
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          _valueCheck5 = value!;
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      CT.manageWallet,
                                                      style: TU.smTxt2.copyWith(fontSize: 15),
                                                    ).paddingOnly(right: 175),
                                                  ],
                                                ).paddingOnly(left: 41),
                                                const Divider(
                                                  height: 0.5,
                                                  thickness: 2,
                                                ).paddingOnly(left: 43,right: 43),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      checkColor: Colors.white,
                                                      value: _valueCheck6,
                                                      onChanged: (bool? value) {
                                                        // setState(() {
                                                        //   _valueCheck6 = value!;
                                                        // });
                                                      },
                                                    ),
                                                    Text(
                                                      CT.manageNotification,
                                                      style: TU.smTxt2.copyWith(fontSize: 15),
                                                    ).paddingOnly(right: 155),
                                                  ],
                                                ).paddingOnly(left: 41),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: CU.background,
                                                      ),
                                                      borderRadius: const BorderRadius.all(Radius.circular(10.0))
                                                  ),
                                                  child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor: const Color(0xff6A58FB),
                                                    ),
                                                    onPressed: (){
                                                      Get.back();
                                                      Get.to(const RemoveParent());
                                                    },
                                                    child: SizedBox(
                                                      height: 50,
                                                      child: Center(
                                                        child: Text(
                                                          CT.done,
                                                          style: TU.buttonStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                                                        ),
                                                      ).paddingAll(10),
                                                    ),
                                                  ),
                                                ).paddingOnly(top: 25,bottom: 20,left: 20,right: 20),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: SizedBox(
                                      width: 100,
                                      height: 32,
                                      child: Text(
                                        CT.accept,
                                        style: TU.buttonStyle.copyWith(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                                      ).paddingOnly(top: 8,left: 27),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ).paddingOnly(left: 10,),
                      ],
                    ),
                  ),
                );
              },
            ).paddingOnly(top: 15,left: 15,right: 15),
            // SizedBox(
            //   width: 365,
            //   height: 100,
            //   child: Card(
            //     shape: const OutlineInputBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(12))
            //     ),
            //     child: Row(
            //       children: [
            //         Image.asset('assets/image/logo5.png',height: 48,).paddingOnly(left: 10,bottom: 42,top: 10),
            //         Column(
            //           children: [
            //             Text(
            //                 'John Doe',
            //                 style: TU.bsBTN.copyWith(fontSize: 14),
            //             ).paddingOnly(right: 200,top: 12),
            //             const Text(
            //                 'As a Parent',
            //                 style: TU.smTxt2,
            //             ).paddingOnly(right: 189),
            //             Row(
            //               children: [
            //                 Container(
            //                   decoration: const BoxDecoration(
            //                     borderRadius: BorderRadius.all(Radius.circular(12)),
            //                   ),
            //                   child: ElevatedButton(
            //                     style: ElevatedButton.styleFrom(
            //                       backgroundColor: Colors.white,
            //                     ),
            //                     onPressed: (){},
            //                     child: SizedBox(
            //                       width: 100,
            //                       height: 32,
            //                       child: Text(
            //                         'Decline',
            //                         style: TU.buttonStyle.copyWith(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
            //                       ).paddingOnly(top: 8,left: 27),
            //                     ),
            //                   ).paddingOnly(right: 17),
            //                 ),
            //                 Container(
            //                   decoration: const BoxDecoration(
            //                     borderRadius: BorderRadius.all(Radius.circular(12)),
            //                   ),
            //                   child: ElevatedButton(
            //                     style: ElevatedButton.styleFrom(
            //                       backgroundColor: const Color(0xff6A58FB),
            //                     ),
            //                     onPressed: (){},
            //                     child: SizedBox(
            //                       width: 100,
            //                       height: 32,
            //                       child: Text(
            //                         'Accept',
            //                         style: TU.buttonStyle.copyWith(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
            //                       ).paddingOnly(top: 8,left: 27),
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ],
            //         ).paddingOnly(left: 10,),
            //       ],
            //     ),
            //   ),
            // ).paddingOnly(top: 15,left: 15,right: 15),
            // SizedBox(
            //   width: 365,
            //   height: 100,
            //   child: Card(
            //     shape: const OutlineInputBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(12))
            //     ),
            //     child: Row(
            //       children: [
            //         Image.asset('assets/image/logo6.png',height: 48,).paddingOnly(left: 10,bottom: 42,top: 10),
            //         Column(
            //           children: [
            //             Text(
            //                 'John Doe',
            //                 style: TU.bsBTN.copyWith(fontSize: 14),
            //             ).paddingOnly(right: 200,top: 12),
            //             const Text(
            //                 'As a Parent',
            //                 style: TU.smTxt2,
            //             ).paddingOnly(right: 189),
            //             Row(
            //               children: [
            //                 Container(
            //                   decoration: const BoxDecoration(
            //                     borderRadius: BorderRadius.all(Radius.circular(12)),
            //                   ),
            //                   child: ElevatedButton(
            //                     style: ElevatedButton.styleFrom(
            //                       backgroundColor: Colors.white,
            //                     ),
            //                     onPressed: (){},
            //                     child: SizedBox(
            //                       width: 100,
            //                       height: 32,
            //                       child: Text(
            //                         'Decline',
            //                         style: TU.buttonStyle.copyWith(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
            //                       ).paddingOnly(top: 8,left: 27),
            //                     ),
            //                   ).paddingOnly(right: 17),
            //                 ),
            //                 Container(
            //                   decoration: const BoxDecoration(
            //                     borderRadius: BorderRadius.all(Radius.circular(12)),
            //                   ),
            //                   child: ElevatedButton(
            //                     style: ElevatedButton.styleFrom(
            //                       backgroundColor: const Color(0xff6A58FB),
            //                     ),
            //                     onPressed: (){},
            //                     child: SizedBox(
            //                       width: 100,
            //                       height: 32,
            //                       child: Text(
            //                         'Accept',
            //                         style: TU.buttonStyle.copyWith(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
            //                       ).paddingOnly(top: 8,left: 27),
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ],
            //         ).paddingOnly(left: 10,),
            //       ],
            //     ),
            //   ),
            // ).paddingOnly(top: 15,left: 15,right: 15),
          ],
        ),
      ),
    );
  }
}