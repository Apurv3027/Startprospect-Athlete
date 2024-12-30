import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/models/Notification.dart';
import 'package:starprospect/utility/TextStyle.dart';
import '../utility/CommonAppBar.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: 'Notifications',
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemCount: not.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return NotificationCard(noti: not[index]);
              },
            ).paddingOnly(top: 10),
            // Card(
            //   shape: const OutlineInputBorder(
            //       borderRadius: BorderRadius.all(Radius.circular(12))
            //   ),
            //   child: Row(
            //     children: [
            //       Image.asset('assets/image/logo5.png',height: 70,).paddingOnly(left: 10,top: 10,bottom: 10),
            //       Column(
            //         children: [
            //           Text(
            //             'John Doe added a comment \non the ',
            //             style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff030303)),
            //           ).paddingOnly(left: 20,top: 12),
            //           Text(
            //             '1h',
            //             style: TU.bsBTN.copyWith(fontSize: 12,color: const Color(0xff7B838A)),
            //           ).paddingOnly(left: 20,top: 17,bottom: 10,right: 192),
            //         ],
            //       ),
            //     ],
            //   ),
            // ).paddingOnly(left: 15,right: 15,top: 15),
            // Card(
            //   shape: const OutlineInputBorder(
            //       borderRadius: BorderRadius.all(Radius.circular(12))
            //   ),
            //   child: Row(
            //     children: [
            //       Image.asset('assets/image/logo6.png',height: 70,).paddingOnly(left: 10,top: 10,bottom: 10),
            //       Column(
            //         children: [
            //           Text(
            //             'Jessia Rose liked your submitted \nnews tip',
            //             style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff030303)),
            //           ).paddingOnly(left: 20,top: 12),
            //           Text(
            //             '2h',
            //             style: TU.bsBTN.copyWith(fontSize: 12,color: const Color(0xff7B838A)),
            //           ).paddingOnly(left: 20,top: 17,bottom: 10,right: 222),
            //         ],
            //       ),
            //     ],
            //   ),
            // ).paddingOnly(left: 15,right: 15,top: 15),
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemCount: 3,
            //   itemBuilder: (context, index) {
            //     return Column(
            //       children: [
            //         Card(
            //           shape: const OutlineInputBorder(
            //               borderRadius: BorderRadius.all(Radius.circular(12))
            //           ),
            //           child: Row(
            //             children: [
            //               Image.asset('assets/image/logo5.png',height: 70,).paddingOnly(left: 10,top: 10,bottom: 10),
            //               Column(
            //                 children: [
            //                   Text(
            //                     'John Doe added a comment \non the ',
            //                     style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff030303)),
            //                   ).paddingOnly(left: 20,top: 12),
            //                   Text(
            //                     '1h',
            //                     style: TU.bsBTN.copyWith(fontSize: 12,color: const Color(0xff7B838A)),
            //                   ).paddingOnly(left: 20,top: 17,bottom: 10,right: 192),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ).paddingOnly(left: 15,right: 15,top: 15),
            //         Card(
            //           shape: const OutlineInputBorder(
            //               borderRadius: BorderRadius.all(Radius.circular(12))
            //           ),
            //           child: Row(
            //             children: [
            //               Image.asset('assets/image/logo6.png',height: 70,).paddingOnly(left: 10,top: 10,bottom: 10),
            //               Column(
            //                 children: [
            //                   Text(
            //                     'Jessia Rose liked your submitted \nnews tip',
            //                     style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff030303)),
            //                   ).paddingOnly(left: 20,top: 12),
            //                   Text(
            //                     '2h',
            //                     style: TU.bsBTN.copyWith(fontSize: 12,color: const Color(0xff7B838A)),
            //                   ).paddingOnly(left: 20,top: 17,bottom: 10,right: 222),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ).paddingOnly(left: 15,right: 15,top: 15),
            //       ],
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({Key? key, required this.noti}) : super(key: key);
  final Noti noti;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: Row(
        children: [
          Image.asset(noti.profileImage,height: 70,).paddingOnly(left: 10,top: 10,bottom: 10),
          Column(
            children: [
              Text(
                noti.notification,
                style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff030303)),
              ).paddingOnly(left: 20,top: 12),
              Text(
                noti.time,
                style: TU.bsBTN.copyWith(fontSize: 12,color: const Color(0xff7B838A)),
              ).paddingOnly(left: 20,top: 17,bottom: 10,right: 192),
            ],
          ),
        ],
      ),
    );
  }
}
