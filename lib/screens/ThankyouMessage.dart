import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/TextStyle.dart';

class ThankyouMessage extends StatefulWidget {
  const ThankyouMessage({Key? key}) : super(key: key);

  @override
  State<ThankyouMessage> createState() => _ThankyouMessageState();
}

class _ThankyouMessageState extends State<ThankyouMessage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: 'Thank You',
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
        action: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.done_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Icon(Icons.circle_outlined,color: Colors.grey,).paddingOnly(right: 7,bottom: 20),
                Text(
                    'Thank you so much for your aid, it will help \nme in my further growth and aims that I \ndesire to achieve.',
                    style: TU.cardDis.copyWith(color: const Color(0xff7B838A)),
                ),
              ],
            ).paddingOnly(top: 25,left: 17,right: 15),
            const Divider(
              height: 0.5,
              thickness: 2,
            ).paddingOnly(left: 15,right: 15,top: 15),
            Row(
              children: [
                const Icon(Icons.circle_outlined,color: Colors.grey,).paddingOnly(right: 7,bottom: 20),
                Text(
                    'Thank you so much for your aid, it will help \nme in my further growth and aims that I \ndesire to achieve.',
                    style: TU.cardDis.copyWith(color: const Color(0xff7B838A)),
                ),
              ],
            ).paddingOnly(top: 15,left: 17,right: 15),
            const Divider(
              height: 0.5,
              thickness: 2,
            ).paddingOnly(left: 15,right: 15,top: 15),
            Row(
              children: [
                const Icon(Icons.circle_outlined,color: Colors.grey,).paddingOnly(right: 7,bottom: 20),
                Text(
                    'Thank you so much for your aid, it will help \nme in my further growth and aims that I \ndesire to achieve.',
                    style: TU.cardDis.copyWith(color: const Color(0xff7B838A)),
                ),
              ],
            ).paddingOnly(top: 15,left: 17,right: 15),
            const Divider(
              height: 0.5,
              thickness: 2,
            ).paddingOnly(left: 15,right: 15,top: 15),
            Card(
              shape: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.circle_outlined,color: Colors.grey,).paddingOnly(right: 7),
                      Text(
                        'Custom thank you message',
                        style: TU.cardDis.copyWith(color: const Color(0xff7B838A)),
                      ),
                    ],
                  ),
                  Text(
                    '24/150',
                    style: TU.cardDis.copyWith(color: const Color(0xff7B838A),fontSize: 12),
                  ).paddingOnly(top: 25,left: 280,bottom: 10),
                ],
              ).paddingOnly(top: 15,left: 17,right: 15),
            ).paddingOnly(top: 15,left: 15,right: 15),
          ],
        ),
      ),
    );
  }

}