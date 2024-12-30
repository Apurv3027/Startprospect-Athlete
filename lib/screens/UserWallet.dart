import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/CommonTextField.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class UserWallet extends StatefulWidget {
  const UserWallet({Key? key}) : super(key: key);

  @override
  State<UserWallet> createState() => _UserWalletState();
}

class _UserWalletState extends State<UserWallet> {
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: 'Withdraw',
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
              child: Container(
                height: 180,
                width: 355,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage("assets/image/Cashflow.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      "My Wallet",
                      style: TU.appBarActionTxt,
                    ).paddingOnly(top: 15, left: 15, right: 267),
                    Text(
                      "Withdrawal Balance",
                      style: TU.appBarActionTxt.copyWith(fontSize: 14),
                    ).paddingOnly(top: 16, left: 15, right: 211),
                    Text(
                      "\$1,000",
                      style: TU.smTxtBtn.copyWith(fontSize: 24, color: Colors.white),
                    ).paddingOnly(top: 10, left: 15, right: 250),
                    Text(
                      "/USD",
                      style: TU.appBarActionTxt.copyWith(fontSize: 18),
                    ).paddingOnly(top: 10, left: 15, right: 291),
                    Row(
                      children: [
                        Text(
                          "View breakdown",
                          style: TU.appBarActionTxt.copyWith(fontSize: 12),
                        ).paddingOnly(left: 15, right: 7),
                        const Icon(
                          Icons.arrow_right_alt_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ).paddingOnly(top: 10),
                  ],
                ),
              ),
            ).paddingOnly(top: 20, left: 15, right: 15),
            CTF
                .commonTextField(
                  suggestionTxt: 'Enter Amount',
                  name: 'Enter Amount',
                  controller: amountController,
                  action: TextInputAction.next,
                )
                .paddingOnly(left: 15, top: 20, right: 15),
            const Text(
              'Select Bank',
              style: TU.color999999w40016,
            ).paddingOnly(top: 16, left: 15, right: 288),
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
                onTap: () {},
              ),
            ).paddingOnly(left: 15, right: 15, top: 9),
            Card(
              shape: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
              child: ListTile(
                leading: Image.asset(
                  'assets/image/BoA.png',
                  height: 26,
                  color: const Color(0xff828282),
                ),
                title: Text(
                  'Bank Of America',
                  style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff828282)),
                ),
                subtitle: Text(
                  'Saving Account - XXX0954',
                  style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff828282)),
                ),
                onTap: () {},
              ),
            ).paddingOnly(left: 15, right: 15, top: 9),
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
                  '+ Add Bank',
                  style: TU.smTxtBtn2.copyWith(fontSize: 16, color: const Color(0xff6A58FB), fontFamily: 'SF UI Display'),
                ),
              ),
            ).paddingOnly(left: 15,top: 9,right: 15),
            Container(
              height: 50,
              width: 335,
              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color(0xff7B838A),
                  //side: const BorderSide(width: 1.0, color: Colors.blue),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.account_balance_wallet_outlined,color: Colors.white,).paddingOnly(left: 84),
                    Text(
                      'Withdraw',
                      style: TU.smTxtBtn2.copyWith(fontSize: 16,color: Colors.white),
                    ).paddingOnly(left: 6,right: 85),
                  ],
                ).paddingAll(10),
              ),
            ).paddingOnly(left: 20,top: 55,right: 20,bottom: 20),
          ],
        ),
      ),
    );
  }
}
