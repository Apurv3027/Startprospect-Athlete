import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/AccountSettings.dart';
import 'package:starprospect/screens/Invitation.dart';
import 'package:starprospect/utility/TextStyle.dart';
import '../utility/CommonAppBar.dart';

class RemoveParent extends StatefulWidget {
  const RemoveParent({Key? key}) : super(key: key);

  @override
  State<RemoveParent> createState() => _RemoveParentState();
}

class _RemoveParentState extends State<RemoveParent> {

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
            SizedBox(
              width: 365,
              height: 190,
              child: Card(
                shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 68,
                      width: 68,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/image/Rectangle 6.png'),
                      ),
                    ).paddingOnly(top: 17,left: 139,right: 138),
                    Text(
                        'John Doe',
                        style: TU.smTxtBtn2.copyWith(fontSize: 16,color: Colors.black),
                    ).paddingOnly(top: 15,left: 133,right: 133),
                    Row(
                      children: [
                        const Icon(Icons.mail_outline_rounded,size: 16,color: Colors.grey,),
                        Text(
                            'cobybrayent@gmail.com',
                            style: TU.smTxt2.copyWith(color: Colors.grey),
                        ).paddingOnly(left: 7),
                      ],
                    ).paddingOnly(top: 20,left: 74,right: 71,bottom: 21),
                  ],
                ),
              ),
            ).paddingOnly(top: 15,left: 15,right: 15),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffEB5757),
                ),
                onPressed: (){
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      shape: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      title: Center(
                        child: Text(
                          'Remove Parent',
                          style: TU.smTxtBtn2.copyWith(color: Colors.black,fontSize: 22),
                        ),
                      ),
                      content: const Text(
                        'Are you sure you want to remove parent?',
                        style: TU.fpMainEx,
                      ),
                      actions: [
                        Row(
                          children: [
                            Container(
                              width: 122,
                              height: 45,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(12.0))
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffEB5757),
                                ),
                                onPressed: () {
                                  Get.back();
                                  Get.back();
                                  Get.back();
                                  //Get.offAll(const AccountSettings());
                                },
                                child: Center(
                                  child: Text(
                                    'Remove',
                                    style: TU.txtButton.copyWith(color: Colors.white),
                                  ),
                                ),
                              ),
                            ).paddingOnly(left: 20),
                            Container(
                              width: 122,
                              height: 45,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(12.0))
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  Get.back();
                                },
                                child: Center(
                                  child: Text(
                                    'Cancel',
                                    style: TU.txtButton.copyWith(color: Colors.black),
                                  ),
                                ),
                              ),
                            ).paddingOnly(right: 20,left: 11),
                          ],
                        ).paddingOnly(bottom: 20),
                      ],
                    ),
                  );
                },
                child: SizedBox(
                  height: 50,
                  child: Center(
                    child: Text(
                      'Remove Parent',
                      style: TU.buttonStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ).paddingAll(10),
                ),
              ),
            ).paddingOnly(top: 421,bottom: 20,left: 20,right: 20),
          ],
        ),
      ),
    );
  }
}