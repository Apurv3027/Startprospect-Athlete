import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/TextStyle.dart';

class RemoveAccount extends StatefulWidget {
  const RemoveAccount({Key? key}) : super(key: key);

  @override
  State<RemoveAccount> createState() => _RemoveAccountState();
}

class _RemoveAccountState extends State<RemoveAccount> {

  // String? account;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
          titleEx: 'Bank Account',
          centerTitle: true,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Bank Account',
              style: TU.smTxtBtn2.copyWith(fontSize: 18,color: Colors.black),
            ).paddingOnly(left: 15,top: 24,right: 234),
            Card(
              shape: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: ListTile(
                leading: Image.asset('assets/image/BoA.png', height: 26),
                title: Text(
                  'Bank Of America',
                  style: TU.bsBTN.copyWith(fontSize: 14),
                ),
                subtitle: Text(
                  'Saving Account -XXX02362',
                  style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff828282)),
                ),
                trailing: const Icon(Icons.radio_button_off_rounded),
                onTap: () {},
              ),
            ).paddingOnly(left: 15, right: 15, top: 11),
            Card(
              shape: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: ListTile(
                leading: Image.asset('assets/image/BoA.png', height: 26),
                title: Text(
                  'Bank Of America',
                  style: TU.bsBTN.copyWith(fontSize: 14),
                ),
                subtitle: Text(
                  'Saving Account - XXX0954',
                  style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff828282)),
                ),
                trailing: const Icon(Icons.radio_button_checked_rounded,color: Color(0xff6A58FB),),
                onTap: () {},
              ),
            ).paddingOnly(left: 15, right: 15, top: 11),
            Container(
              height: 50,
              width: 345,
              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: OutlinedButton(
                onPressed: () {
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
                              child: const Icon(
                                  Icons.delete_outline_rounded,
                                  color: Color(0xffEB5757),
                                  size: 60,
                              ).paddingOnly(top: 19,left: 158,right: 157),
                              onTap: (){},
                            ),
                            Text(
                              'Do you Want to remove \nyour account ?',
                              style: TU.bsBTN.copyWith(fontSize: 18,color: const Color(0xff030303)),
                              textAlign: TextAlign.center,
                            ).paddingOnly(top: 12,left: 71,right: 69),
                            Text(
                              'Do you want to verify \nthe email?',
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
                                    onPressed: (){
                                      Get.back();
                                    },
                                    child: SizedBox(
                                      width: 135,
                                      height: 45,
                                      child: const Center(
                                        child: Text(
                                          'Cancel',
                                          style: TU.bsBTN,
                                        ),
                                      ).paddingAll(10),
                                    ),
                                  ),
                                ).paddingOnly(right: 10),
                                Container(
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12.0))
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xffEB5757),
                                    ),
                                    onPressed: (){
                                      Get.back();
                                    },
                                    child: SizedBox(
                                      width: 135,
                                      height: 50,
                                      child: const Center(
                                        child: Text(
                                          'Remove',
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
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 1.0, color: Color(0xffEB5757)),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.delete_outline_rounded,color: Color(0xffEB5757),size: 24),
                    Text(
                      'Remove',
                      style: TU.smTxtBtn2.copyWith(color: const Color(0xffEB5757),fontSize: 16),
                    ).paddingOnly(left: 4),
                  ],
                ).paddingOnly(left: 100,top: 13,bottom: 13,right: 100),
              ),
            ).paddingOnly(left: 15,top: 400,right: 15,bottom: 20),
            // RadioListTile(
            //   value: "Saving Account - XXX02362",
            //   groupValue: account,
            //   onChanged: (value){
            //     setState(() {
            //       account = value.toString();
            //     });
            //   },
            // ),
            // RadioListTile(
            //   value: "Saving Account - XXX0954",
            //   groupValue: account,
            //   onChanged: (value){
            //     setState(() {
            //       account = value.toString();
            //     });
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}