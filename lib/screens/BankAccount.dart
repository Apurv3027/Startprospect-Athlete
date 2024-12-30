import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/HelpAndReport.dart';
import 'package:starprospect/screens/RemoveAccount.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class BankAccount extends StatefulWidget {
  const BankAccount({Key? key}) : super(key: key);

  @override
  State<BankAccount> createState() => _BankAccountState();
}

class _BankAccountState extends State<BankAccount> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: CT.bankAcc,
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
        action: [
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
                    Get.to(const RemoveAccount());
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.delete_outline_rounded,color: Color(0xffEB5757),size: 18),
                      Text(
                        CT.removeAcc,
                        style: TU.appBarActionTxt.copyWith(color: const Color(0xffEB5757),fontSize: 14),
                      ).paddingOnly(left: 4),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {
                    Get.back();
                    Get.to(const HelpAndReport());
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.feedback_outlined,color: Colors.black,size: 18),
                      Text(
                        CT.getHelp,
                        style: TU.appBarActionTxt.copyWith(color: Colors.black,fontSize: 14),
                      ).paddingOnly(left: 5),
                    ],
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
          ),
        ]
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              CT.bankAcc,
              style: TU.smTxtBtn2.copyWith(fontSize: 18,color: Colors.black),
            ).paddingOnly(left: 15,top: 24,right: 234),
            Card(
              shape: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: ListTile(
                leading: Image.asset('assets/image/BoA.png', height: 26),
                title: Text(
                  CT.bankUSA,
                  style: TU.bsBTN.copyWith(fontSize: 14),
                ),
                subtitle: Text(
                  CT.savingAcc02362,
                  style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff828282)),
                ),
                onTap: () {},
              ),
            ).paddingOnly(left: 15, right: 15, top: 16),
            Card(
              shape: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: ListTile(
                leading: Image.asset('assets/image/BoA.png', height: 26),
                title: Text(
                  CT.bankUSA,
                  style: TU.bsBTN.copyWith(fontSize: 14),
                ),
                subtitle: Text(
                  CT.savingAcc0954,
                  style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff828282)),
                ),
                onTap: () {},
              ),
            ).paddingOnly(left: 15, right: 15, top: 11),
            Container(
              height: 50,
              width: 345,
              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 1.0, color: Colors.blue),
                ),
                child: Text(
                  CT.addBankAcc,
                  style: TU.smTxtBtn2.copyWith(fontSize: 16, color: const Color(0xff6A58FB), fontFamily: 'SF UI Display'),
                ),
              ),
            ).paddingOnly(left: 15,top: 11,right: 15),
          ],
        ),
      ),
    );
  }
}
