import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/models/Message.dart';
import 'package:starprospect/screens/Chat.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class MessageSent extends StatefulWidget {
  const MessageSent({Key? key}) : super(key: key);

  @override
  State<MessageSent> createState() => _MessageSentState();
}

class _MessageSentState extends State<MessageSent>{

  final TextEditingController _searchViewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
            ).paddingOnly(top: 10,left: 15,right: 15),
            ListView.builder(
              itemCount: sent.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return SentMsg(sent: sent[index]);
              },
            ).paddingOnly(top: 10),
            // Card(
            //   child: ListTile(
            //     leading: Image.asset('assets/image/logo7.png',height: 40),
            //     title: Text(
            //       'Walk-Ons Bistreaux & Bar',
            //       style: TU.smTxtBtn2.copyWith(fontSize: 14,color: Colors.black),
            //     ),
            //     subtitle: Text(
            //       'Hello',
            //       style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
            //     ),
            //     trailing: Text(
            //       '8:30 AM',
            //       style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
            //     ).paddingOnly(bottom: 15),
            //     onTap: () {},
            //   ),
            // ).paddingOnly(top: 10),
            // Card(
            //   child: ListTile(
            //     leading: Image.asset('assets/image/logo7.png',height: 40),
            //     title: Text(
            //       'Walk-Ons Bistreaux & Bar',
            //       style: TU.smTxtBtn2.copyWith(fontSize: 14,color: Colors.black),
            //     ),
            //     subtitle: Text(
            //       'Hello',
            //       style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
            //     ),
            //     trailing: Text(
            //       '8:30 AM',
            //       style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
            //     ).paddingOnly(bottom: 15),
            //     onTap: () {
            //       Get.to(const Chat());
            //     },
            //   ),
            // ).paddingOnly(top: 15),
            // Card(
            //   child: ListTile(
            //     leading: Image.asset('assets/image/Rectangle 6.png',height: 40),
            //     title: Text(
            //       'John Doe',
            //       style: TU.smTxtBtn2.copyWith(fontSize: 14,color: Colors.black),
            //     ),
            //     subtitle: Text(
            //       'Ok fine.',
            //       style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
            //     ),
            //     trailing: Text(
            //       '13/03/22',
            //       style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
            //     ).paddingOnly(bottom: 15),
            //     onTap: () {},
            //   ),
            // ).paddingOnly(top: 15),
            // Card(
            //   child: ListTile(
            //     leading: Image.asset('assets/image/Rectangle 6.png',height: 40),
            //     title: Text(
            //       'John Doe',
            //       style: TU.smTxtBtn2.copyWith(fontSize: 14,color: Colors.black),
            //     ),
            //     subtitle: Text(
            //       'Hello',
            //       style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
            //     ),
            //     trailing: Text(
            //       '12/03/22',
            //       style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
            //     ).paddingOnly(bottom: 15),
            //     onTap: () {},
            //   ),
            // ).paddingOnly(top: 15),
            // Card(
            //   child: ListTile(
            //     leading: Image.asset('assets/image/Rectangle 6.png',height: 40),
            //     title: Text(
            //       'John Doe',
            //       style: TU.smTxtBtn2.copyWith(fontSize: 14,color: Colors.black),
            //     ),
            //     subtitle: Text(
            //       'Lorem Ipsum is dummt text',
            //       style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
            //     ),
            //     trailing: Text(
            //       '10/03/22',
            //       style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
            //     ).paddingOnly(bottom: 15),
            //     onTap: () {},
            //   ),
            // ).paddingOnly(top: 15),
            // Card(
            //   child: ListTile(
            //     leading: Image.asset('assets/image/Rectangle 6.png',height: 40),
            //     title: Text(
            //       'John Doe',
            //       style: TU.smTxtBtn2.copyWith(fontSize: 14,color: Colors.black),
            //     ),
            //     subtitle: Text(
            //       'Ok, Done.',
            //       style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
            //     ),
            //     trailing: Text(
            //       '09/03/22',
            //       style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
            //     ).paddingOnly(bottom: 15),
            //     onTap: () {},
            //   ),
            // ).paddingOnly(top: 15),
            // Card(
            //   child: ListTile(
            //     leading: Image.asset('assets/image/Rectangle 6.png',height: 40),
            //     title: Text(
            //       'John Doe',
            //       style: TU.smTxtBtn2.copyWith(fontSize: 14,color: Colors.black),
            //     ),
            //     subtitle: Text(
            //       'Ok, Done.',
            //       style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
            //     ),
            //     trailing: Text(
            //       '09/03/22',
            //       style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
            //     ).paddingOnly(bottom: 15),
            //     onTap: () {},
            //   ),
            // ).paddingOnly(top: 15,bottom: 20),
            // ListView.builder(
            //   itemCount: 8,
            //   shrinkWrap: true,
            //   physics: const BouncingScrollPhysics(),
            //   itemBuilder: (context, index) {
            //     return CommonPlayerCard(
            //       onTap: () {},
            //     );
            //   },
            // ).paddingOnly(bottom: 15),
          ],
        ).paddingOnly(left: 15,right: 15),
      ),
    );
  }

}

class SentMsg extends StatelessWidget {
  const SentMsg({Key? key, required this.sent}) : super(key: key);
  final Sent sent;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(sent.logo,height: 40),
        title: Text(
          sent.profileName,
          style: TU.smTxtBtn2.copyWith(fontSize: 14,color: Colors.black),
        ),
        subtitle: Text(
          sent.msg,
          style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
        ),
        trailing: Text(
          sent.time,
          style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
        ).paddingOnly(bottom: 15),
        onTap: () {
          Get.to(const Chat());
        },
      ),
    );
  }
}