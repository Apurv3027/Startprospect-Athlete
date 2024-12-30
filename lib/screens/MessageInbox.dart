import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/models/Message.dart';
import 'package:starprospect/screens/Chat.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class MessageInbox extends StatefulWidget {
  const MessageInbox({Key? key}) : super(key: key);

  @override
  State<MessageInbox> createState() => _MessageInboxState();
}

class _MessageInboxState extends State<MessageInbox>{

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
              itemCount: message.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Inbox(message: message[index]);
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
            //     trailing: Column(
            //       children: [
            //         Text(
            //           '8:30 AM',
            //           style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
            //         ).paddingOnly(top: 10),
            //         Image.asset('assets/image/Message Num.png',height: 20,).paddingOnly(top: 10,left: 30),
            //       ],
            //     ),
            //     onTap: () {
            //       Get.to(const Chat());
            //     },
            //   ),
            // ).paddingOnly(top: 10),
            // Card(
            //   child: ListTile(
            //     leading: Image.asset('assets/image/Rectangle 6.png',height: 40),
            //     title: Text(
            //       'John Doe',
            //       style: TU.smTxtBtn2.copyWith(fontSize: 14,color: Colors.black),
            //     ),
            //     subtitle: Text(
            //       'Lorem Ipsum..',
            //       style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
            //     ),
            //     trailing: Text(
            //       '14/03/22',
            //       style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
            //     ).paddingOnly(bottom: 15),
            //     onTap: () {},
            //   ),
            // ).paddingOnly(top: 15),
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

class Inbox extends StatelessWidget {
  const Inbox({Key? key, required this.message}) : super(key: key);
  final Message message;

  @override
  Widget build(BuildContext context) {

    //Message Inbox
    return Card(
      child: ListTile(
        leading: Image.asset(message.image,height: 40),
        title: Text(
          message.title,
          style: TU.smTxtBtn2.copyWith(fontSize: 14,color: Colors.black),
        ),
        subtitle: Text(
          message.subTitle,
          style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
        ),
        trailing: Text(
          message.DateAndTime,
          style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
        ).paddingOnly(bottom: 15),
        onTap: () {
          Get.to(const Chat());
        },
      ),
    );
  }
}