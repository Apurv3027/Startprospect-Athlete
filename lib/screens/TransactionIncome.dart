import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/models/Transaction.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/TextStyle.dart';

class TransactionIncome extends StatefulWidget {
  const TransactionIncome({Key? key}) : super(key: key);

  @override
  State<TransactionIncome> createState() => _TransactionIncomeState();
}

class _TransactionIncomeState extends State<TransactionIncome> {
  // Initial Selected Value
  RxString dropdownvalue1 = 'Income'.obs;

  // List of items in our dropdown menu
  var items = [
    'Income',
    'Donation',
    'Withdraw',
  ].obs;

  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: 'Transaction',
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
      body: SingleChildScrollView(
        child: Obx(() {
          return Column(
            children: [
              Row(
                children: [
                  Text(
                    'Transaction History',
                    style: TU.smTxtBtn2.copyWith(fontSize: 18, color: Colors.black),
                  ).paddingOnly(left: 15, top: 24, right: 73),
                  DropdownButton(
                    value: dropdownvalue1.value,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff6A58FB),
                    ),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TU.bsBTN.copyWith(fontSize: 14, color: const Color(0xff6A58FB)),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue1.value = newValue!;
                      });
                    },
                  ).paddingOnly(top: 26, right: 20),
                ],
              ),

              //Transaction Income
              dropdownvalue1.value == 'Income'
                  ? ListView.builder(
                      itemCount: income.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return IncomeCard(income: income[index]);
                      },
                    ).paddingOnly(top: 10)
                  : dropdownvalue1.value == 'Donation'
                      ? ListView.builder(
                          itemCount: donation.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return DonationCard(donation: donation[index]);
                          },
                        ).paddingOnly(top: 10)
                      : ListView.builder(
                          itemCount: withdraw.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return WithdrawCard(withdraw: withdraw[index]);
                          },
                        ).paddingOnly(top: 10),

              //Transaction Donation

              //Transaction Withdraw

              // Card(
              //   shape: const OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(12))
              //   ),
              //   child: ListTile(
              //     leading: const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),).paddingOnly(top: 10),
              //     title: Text(
              //         'Pending',
              //         style: TU.bsBTN.copyWith(fontSize: 14),
              //     ),
              //     subtitle: const Text(
              //       '-56.00',
              //       style: TU.bsBTN,
              //     ),
              //     trailing: const Text(
              //       '1 Jan 2020',
              //       style: TU.smTxt,
              //     ).paddingOnly(bottom: 15),
              //     onTap: (){},
              //   ),
              // ).paddingOnly(left: 15,right: 15,top: 15),
              // Card(
              //   shape: const OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(12))
              //   ),
              //   child: ListTile(
              //     leading: const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),).paddingOnly(top: 10),
              //     title: Text(
              //         'Pending',
              //         style: TU.bsBTN.copyWith(fontSize: 14),
              //     ),
              //     subtitle: const Text(
              //       '56.00',
              //       style: TU.bsBTN,
              //     ),
              //     trailing: const Text(
              //       '1 Jan 2020',
              //       style: TU.smTxt,
              //     ).paddingOnly(bottom: 15),
              //     onTap: (){},
              //   ),
              // ).paddingOnly(left: 15,right: 15,top: 15),
              // Card(
              //   shape: const OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(12))
              //   ),
              //   child: ListTile(
              //     leading: const Icon(Icons.person_outline_rounded,color: Color(0xff6A58FB),).paddingOnly(top: 10),
              //     title: Text(
              //       'Received From John',
              //       style: TU.bsBTN.copyWith(fontSize: 14),
              //     ),
              //     subtitle: const Text(
              //       '+110.00',
              //       style: TU.bsBTN,
              //     ),
              //     trailing: const Text(
              //       '1 Jan 2020',
              //       style: TU.smTxt,
              //     ).paddingOnly(bottom: 15),
              //     onTap: (){},
              //   ),
              // ).paddingOnly(left: 15,right: 15,top: 15),
            ],
          );
        }),
      ),
    );
  }
}

class IncomeCard extends StatelessWidget {
  const IncomeCard({Key? key, required this.income}) : super(key: key);
  final Income income;

  @override
  Widget build(BuildContext context) {

    //Income
    return Card(
      shape: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      child: ListTile(
        leading: income.icon.paddingOnly(top: 10),
        title: Text(
          income.title,
          style: const TextStyle(
            color: Color(0xff030303),
            fontFamily: 'Gotham',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        subtitle: Text(
          income.income,
          style: const TextStyle(
            color: Color(0xff030303),
            fontFamily: 'Gotham',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        trailing: Text(
          income.date,
          style: const TextStyle(
            letterSpacing: 0.5,
            color: Colors.black,
            fontFamily: 'Gotham',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ).paddingOnly(bottom: 15),
        onTap: () {},
      ),
    ).paddingOnly(left: 15, right: 15, top: 15);
  }
}

class DonationCard extends StatelessWidget {
  const DonationCard({Key? key, required this.donation}) : super(key: key);
  final Donation donation;

  @override
  Widget build(BuildContext context) {

    //Donation
    return Card(
      shape: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      child: ListTile(
        leading: donation.icon.paddingOnly(top: 10),
        title: Text(
          donation.title,
          style: const TextStyle(
            color: Color(0xff030303),
            fontFamily: 'Gotham',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        subtitle: Text(
          donation.income,
          style: const TextStyle(
            color: Color(0xff030303),
            fontFamily: 'Gotham',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        trailing: Text(
          donation.date,
          style: const TextStyle(
            letterSpacing: 0.5,
            color: Colors.black,
            fontFamily: 'Gotham',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ).paddingOnly(bottom: 15),
        onTap: () {},
      ),
    ).paddingOnly(left: 15, right: 15, top: 15);
  }
}

class WithdrawCard extends StatelessWidget {
  const WithdrawCard({Key? key, required this.withdraw}) : super(key: key);
  final Withdraw withdraw;

  @override
  Widget build(BuildContext context) {

    //Withdraw
    return Card(
      shape: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      child: ListTile(
        leading: withdraw.icon.paddingOnly(top: 10),
        title: Text(
          withdraw.title,
          style: const TextStyle(
            color: Color(0xff030303),
            fontFamily: 'Gotham',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        subtitle: Text(
          withdraw.income,
          style: const TextStyle(
            color: Color(0xff030303),
            fontFamily: 'Gotham',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        trailing: Text(
          withdraw.date,
          style: const TextStyle(
            letterSpacing: 0.5,
            color: Colors.black,
            fontFamily: 'Gotham',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ).paddingOnly(bottom: 15),
        onTap: () {},
      ),
    ).paddingOnly(left: 15, right: 15, top: 15);
  }
}

// class Transaction{
//   String? name;
//   Int? salary;
//   String? date;
//   String? image;
//
//   Transaction({this.name,this.salary,this.date,this.image});
// }
