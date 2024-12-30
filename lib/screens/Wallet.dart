import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/BankAccount.dart';
import 'package:starprospect/screens/TransactionIncome.dart';
import 'package:starprospect/screens/UserWallet.dart';
import 'package:starprospect/utility/TextStyle.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    ).paddingOnly(top: 20,left: 15,right: 267),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Balance",
                              style: TU.appBarActionTxt.copyWith(fontSize: 14),
                            ).paddingOnly(top: 30,left: 15,right: 63),
                            Text(
                              "\$1,548",
                              style: TU.smTxtBtn.copyWith(fontSize: 24,color: Colors.white),
                            ).paddingOnly(top: 10,left: 15,right: 39),
                            Text(
                              "/USD",
                              style: TU.appBarActionTxt.copyWith(fontSize: 18),
                            ).paddingOnly(top: 10,left: 15,right: 64),
                          ],
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(12.0))
                          ),
                          child: OutlinedButton(
                            onPressed: () {
                              Get.to(const UserWallet());
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: const BorderSide(width: 1.0, color: Colors.blue),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.account_balance_wallet_outlined,color: Colors.black,).paddingOnly(left: 20),
                                Text(
                                  'Withdraw',
                                  style: TU.appBarActionTxt.copyWith(fontSize: 14,color: Colors.black),
                                ).paddingOnly(left: 10,right: 30),
                              ],
                            ).paddingAll(8),
                          ),
                          // child: ElevatedButton(
                          //   style: ElevatedButton.styleFrom(
                          //     backgroundColor: Colors.white,
                          //   ),
                          //   onPressed: (){
                          //     Get.to(const UserWallet());
                          //   },
                          //   child: SizedBox(
                          //     width: 173,
                          //     height: 50,
                          //     child: Row(
                          //       children: [
                          //         const Icon(Icons.account_balance_wallet_outlined,color: Colors.black,).paddingOnly(left: 20),
                          //         Text(
                          //           'Withdraw',
                          //           style: TU.appBarActionTxt.copyWith(fontSize: 14,color: Colors.black),
                          //         ).paddingOnly(left: 12,right: 35),
                          //       ],
                          //     ).paddingAll(10),
                          //   ),
                          // ),
                        ).paddingOnly(right: 8,top: 60),
                      ],
                    ),
                  ],
                ),
              ),
            ).paddingOnly(top: 10,left: 15,right: 15),
            Card(
              shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: ListTile(
                leading: const ImageIcon(AssetImage('assets/image/tran.png'),color: Color(0xff6A58FB)),
                title: const Text('Transaction'),
                trailing: const Icon(Icons.chevron_right,color: Colors.black,),
                onTap: (){
                  Get.to(const TransactionIncome());
                },
              ),
            ).paddingOnly(left: 15,right: 15,top: 15),
            Card(
              shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: ListTile(
                leading: const ImageIcon(AssetImage('assets/image/bank.png'),color: Color(0xff6A58FB)),
                title: const Text('Bank Account'),
                trailing: const Icon(Icons.chevron_right,color: Colors.black,),
                onTap: (){
                  Get.to(const BankAccount());
                },
              ),
            ).paddingOnly(left: 15,right: 15,top: 15),
          ],
        ),
      ),
    );
  }
}
