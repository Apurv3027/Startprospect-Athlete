import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';
import '../utility/CommonAppBar.dart';

class FAQs extends StatefulWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {

  List<bool> isExpanded = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: CT.faqs,
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionPanelList(
              elevation: 3,
              // Controlling the expansion behavior
              expansionCallback: (index, isExpanded2) {
                // setState(() {
                //   isExpanded[index] = !isExpanded[index];
                // });

                setState(() {
                  for (int i = 0; i < isExpanded.length; i++) {
                    if (i != index) {
                      isExpanded[i] = false;
                    }
                  }
                  isExpanded[index] = !isExpanded[index];
                });
              },
              animationDuration: const Duration(milliseconds: 600),
              children: [
                ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (_, isExpanded) => Text(
                    CT.faqsTitle1,
                    style: TU.bsBTN.copyWith(fontSize: 14),
                  ).paddingOnly(left: 15,top: 14,bottom: 14,right: 25),
                  body: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: const Text(CT.faqsDis),
                  ),
                  isExpanded: isExpanded[0],
                ),
                ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (_, isExpanded) => Text(
                    CT.faqsTitle2,
                    style: TU.bsBTN.copyWith(fontSize: 14),
                  ).paddingOnly(left: 15,top: 14,bottom: 14,right: 40),
                  body: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: const Text(CT.faqsDis),
                  ),
                  isExpanded: isExpanded[1],
                ),
                ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (_, isExpanded) => Text(
                    CT.faqsTitle3,
                    style: TU.bsBTN.copyWith(fontSize: 14),
                  ).paddingOnly(left: 15,top: 14,bottom: 14,right: 56),
                  body: Text(
                      CT.faqsDis,
                      style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(left: 15,right: 15,bottom: 7),
                  isExpanded: isExpanded[2],
                ),
                ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (_, isExpanded) => Text(
                    CT.faqsTitle4,
                    style: TU.bsBTN.copyWith(fontSize: 14),
                  ).paddingOnly(left: 15,top: 14,bottom: 14,right: 56),
                  body: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: const Text(CT.faqsDis),
                  ),
                  isExpanded: isExpanded[3],
                ),
              ],
            ).paddingAll(15),
          ],
        ),
      ),
    );
  }
}
