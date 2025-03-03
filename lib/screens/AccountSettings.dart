import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/ChangePassword.dart';
import 'package:starprospect/screens/FAQs.dart';
import 'package:starprospect/screens/HelpAndSupport.dart';
import 'package:starprospect/screens/InviteOthers.dart';
import 'package:starprospect/screens/MyReviews.dart';
import 'package:starprospect/screens/Parent.dart';
import 'package:starprospect/screens/SocialMediaScreen.dart';
import 'package:starprospect/screens/ThankyouMessage.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';
import '../utility/CommonAppBar.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: CT.accSetting,
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: ListTile(
                leading: const ImageIcon(AssetImage('assets/image/Icon1.png'),color: Color(0xff6A58FB)),
                title: const Text(CT.linkPlatform),
                trailing: const Icon(Icons.chevron_right,color: Colors.black,),
                onTap: (){
                  Get.to(const SocialMedia());
                },
              ),
            ).paddingOnly(left: 15,right: 15,top: 15),
            Card(
              shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: ListTile(
                leading: const ImageIcon(AssetImage('assets/image/Icon2.png'),color: Color(0xff6A58FB)),
                title: const Text(CT.parent),
                trailing: const Icon(Icons.chevron_right,color: Colors.black,),
                onTap: (){
                  Get.to(const Parent());
                },
              ),
            ).paddingOnly(left: 15,right: 15,top: 15),
            Card(
              shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: ListTile(
                leading: const ImageIcon(AssetImage('assets/image/Icon3.png'),color: Color(0xff6A58FB)),
                title: const Text(CT.thankyouMess),
                trailing: const Icon(Icons.chevron_right,color: Colors.black,),
                onTap: (){
                  Get.to(const ThankyouMessage());
                },
              ),
            ).paddingOnly(left: 15,right: 15,top: 15),
            Card(
              shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: ListTile(
                leading: const ImageIcon(AssetImage('assets/image/Icon4.png'),color: Color(0xff6A58FB)),
                title: const Text(CT.review),
                trailing: const Icon(Icons.chevron_right,color: Colors.black,),
                onTap: (){
                  Get.to(const MyReviews());
                },
              ),
            ).paddingOnly(left: 15,right: 15,top: 15),
            Card(
              shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: ListTile(
                leading: const ImageIcon(AssetImage('assets/image/Icon5.png'),color: Color(0xff6A58FB)),
                title: const Text(CT.inviteOthers),
                trailing: const Icon(Icons.chevron_right,color: Colors.black,),
                onTap: (){
                  Get.to(const InviteOthers());
                },
              ),
            ).paddingOnly(left: 15,right: 15,top: 15),
            Card(
              shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: ListTile(
                leading: const ImageIcon(AssetImage('assets/image/Icon6.png'),color: Color(0xff6A58FB)),
                title: const Text(CT.changePass),
                trailing: const Icon(Icons.chevron_right,color: Colors.black,),
                onTap: (){
                  Get.to(const ChangePassword());
                },
              ),
            ).paddingOnly(left: 15,right: 15,top: 15),
            Card(
              shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: ListTile(
                leading: const ImageIcon(AssetImage('assets/image/Icon7.png'),color: Color(0xff6A58FB)),
                title: const Text(CT.HelpNDSupport),
                trailing: const Icon(Icons.chevron_right,color: Colors.black,),
                onTap: (){
                  Get.to(const HelpAndSupport());
                },
              ),
            ).paddingOnly(left: 15,right: 15,top: 15),
            Card(
              shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: ListTile(
                leading: const ImageIcon(AssetImage('assets/image/Icon8.png'),color: Color(0xff6A58FB)),
                title: const Text(CT.faqs),
                trailing: const Icon(Icons.chevron_right,color: Colors.black,),
                onTap: (){
                  Get.to(const FAQs());
                },
              ),
            ).paddingOnly(left: 15,right: 15,top: 15),
            Card(
              shape: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: ListTile(
                leading: const ImageIcon(AssetImage('assets/image/Icon9.png'),color: Color(0xff6A58FB)),
                title: const Text(CT.logout),
                onTap: (){
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 3),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                        child: Column(
                          children: [
                            GestureDetector(
                                child: Image.asset(
                                  'assets/image/Icon9.png',
                                  height: 60,
                                ).paddingOnly(top: 19,left: 158,right: 157),
                                onTap: (){
                                  Get.back();
                                  Get.to(const InviteOthers());
                                },
                            ),
                            Text(
                              CT.logout,
                              style: TU.smTxtBtn2.copyWith(fontSize: 18,color: const Color(0xff030303)),
                            ).paddingOnly(top: 30,left: 151,right: 149),
                            Text(
                              CT.connLogout,
                              style: TU.bsBTN.copyWith(color: const Color(0xff152A3C)),
                              textAlign: TextAlign.center,
                            ).paddingOnly(top: 15,left: 102,right: 101),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12.0))
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff7B838A).withOpacity(0.20),
                                    ),
                                    onPressed: (){},
                                    child: SizedBox(
                                      width: 135,
                                      height: 45,
                                      child: const Center(
                                        child: Text(
                                          CT.no,
                                          style: TU.bsBTN,
                                        ),
                                      ).paddingAll(10),
                                    ),
                                  ),
                                ).paddingOnly(right: 15),
                                Container(
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12.0))
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xffEB5757),
                                    ),
                                    onPressed: (){},
                                    child: SizedBox(
                                      width: 135,
                                      height: 45,
                                      child: const Center(
                                        child: Text(
                                          CT.yes,
                                          style: TU.appBarActionTxt,
                                        ),
                                      ).paddingAll(10),
                                    ),
                                  ),
                                ),
                              ],
                            ).paddingOnly(top: 27,bottom: 15),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ).paddingAll(15),
          ],
        ),
      ),
    );
  }
}