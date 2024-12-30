import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/Invitation.dart';
import 'package:starprospect/screens/RemoveParent.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/CommonBottomSheet.dart';
import 'package:starprospect/utility/TextStyle.dart';
import '../utility/CommonAppBar.dart';

class Parent extends StatefulWidget {
  const Parent({Key? key}) : super(key: key);

  @override
  State<Parent> createState() => _ParentState();
}

class _ParentState extends State<Parent> {

  bool _valueCheckP1 = true;
  bool _valueCheckP2 = false;
  bool _valueCheckP3 = false;
  bool _valueCheckP4 = false;
  bool _valueCheckP5 = false;
  bool _valueCheckP6 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: 'Parent',
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
        action: [
          GestureDetector(
              child: const ImageIcon(
                  AssetImage('assets/image/Icon10.png'),
              ).paddingOnly(right: 15),
              onTap: (){
                Get.to(const Invitation());
              },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
                'Invite Parents',
            ).paddingOnly(right: 265,top: 15),
            SizedBox(
              width: 345,
              height: 46,
              child: Card(
                shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: const Text('Cobe |').paddingOnly(left: 15,top: 10,right: 274),
              ),
            ).paddingOnly(top: 11),
            const Text(
                'Results',
            ).paddingOnly(right: 309,top: 25),
            ListView.builder(
              shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Card(
                    shape: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/image/Rectangle 6.png'),
                        radius: 25,
                      ),
                      title: Text(
                        'John Doe',
                        style: TU.smTxtBtn2.copyWith(fontSize: 16,color: Colors.black),
                      ),
                      subtitle: Row(
                        children: [
                          const Icon(Icons.mail_outline_rounded),
                          const Text('cobybrayent@gmail.com').paddingOnly(left: 7),
                        ],
                      ),
                      onTap: () {},
                    ),
                  );
                },
            ).paddingOnly(top: 15,left: 15,right: 15),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: CU.background,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12.0))
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
                                'Manage Permissions',
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
                                  value: _valueCheckP1,
                                  onChanged: (bool? value) {
                                    // setState(() {
                                    //   _valueCheckP1 = value!;
                                    // });
                                  },
                                ),
                                Text(
                                  'Profile Manage',
                                  style: TU.smTxt2.copyWith(fontSize: 15),
                                ).paddingOnly(right: 175),
                              ],
                            ).paddingOnly(left: 41),
                            Row(
                              children: [
                                Checkbox(
                                  checkColor: Colors.white,
                                  value: _valueCheckP2,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _valueCheckP2 = value!;
                                    });
                                  },
                                ),
                                Text(
                                  'Offers Manage',
                                  style: TU.smTxt2.copyWith(fontSize: 15),
                                ).paddingOnly(right: 175),
                              ],
                            ).paddingOnly(left: 41),
                            Row(
                              children: [
                                Checkbox(
                                  checkColor: Colors.white,
                                  value: _valueCheckP3,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _valueCheckP3 = value!;
                                    });
                                  },
                                ),
                                Text(
                                  'Team Manage',
                                  style: TU.smTxt2.copyWith(fontSize: 15),
                                ).paddingOnly(right: 175),
                              ],
                            ).paddingOnly(left: 41),
                            Row(
                              children: [
                                Checkbox(
                                  checkColor: Colors.white,
                                  value: _valueCheckP4,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _valueCheckP4 = value!;
                                    });
                                  },
                                ),
                                Text(
                                  'Events Manage',
                                  style: TU.smTxt2.copyWith(fontSize: 15),
                                ).paddingOnly(right: 175),
                              ],
                            ).paddingOnly(left: 41),
                            Row(
                              children: [
                                Checkbox(
                                  checkColor: Colors.white,
                                  value: _valueCheckP5,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _valueCheckP5 = value!;
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
                                  value: _valueCheckP6,
                                  onChanged: (bool? value) {
                                    // setState(() {
                                    //   _valueCheckP6 = value!;
                                    // });
                                  },
                                ),
                                Text(
                                  'Show notifications',
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
                                      'Done',
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
                  height: 50,
                  child: Center(
                    child: Text(
                      'Invite',
                      style: TU.buttonStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ).paddingAll(10),
                ),
              ),
            ).paddingOnly(top: 160,bottom: 20,left: 15,right: 15),
            // Card(
            //   child: ListTile(
            //     leading: const CircleAvatar(
            //       backgroundImage: AssetImage('assets/image/Rectangle 6.png'),
            //       radius: 25,
            //     ),
            //     title: Text(
            //       'John Doe',
            //       style: TU.smTxtBtn2.copyWith(fontSize: 16,color: Colors.black),
            //     ),
            //     subtitle: Row(
            //       children: [
            //         const Icon(Icons.mail_outline_rounded),
            //         const Text('cobybrayent@gmail.com').paddingOnly(left: 7),
            //       ],
            //     ),
            //     onTap: () {},
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}