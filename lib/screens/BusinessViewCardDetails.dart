import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/DownloadScreen.dart';
import 'package:starprospect/screens/ReportDeal.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/CommonButton.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class BusinessViewCardDetails extends StatefulWidget {
  const BusinessViewCardDetails({Key? key}) : super(key: key);

  @override
  State<BusinessViewCardDetails> createState() => _BusinessViewCardDetailsState();
}

class _BusinessViewCardDetailsState extends State<BusinessViewCardDetails> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: CT.dealDetails,
        style: const TextStyle(
          color: Color(0xffFFFFFF),
          fontFamily: 'SF UI Display',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
        centerTitle: true,
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
                  onPressed: () {},
                  child: const Text(
                    CT.saveBtn,
                    style: TU.bsBTN,
                  ),
                ),
              ),
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {
                    Get.to(const ReportDeal());
                  },
                  child: const Text(
                    CT.report,
                    style: TU.bsBTN,
                  ),
                ),
              ),
            ],
            onSelected: (value) {},
          ).paddingOnly(top: 6, right: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          //color: pageColor,
          decoration: BoxDecoration(
            //color: Color(0xff6A58FB),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: CU.background,
              )),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/image/image 28.png',height: 40,width: 40,),
                      Column(
                        children: [
                          Text(
                            CT.businessTitle,
                            style: TU.bsBTN.copyWith(fontSize: 14),
                          ).paddingOnly(right: 144),
                          Container(
                            height: 20,
                            width: 90,
                            decoration: const BoxDecoration(
                                color: Color(0xff828282),
                                borderRadius: BorderRadius.all(Radius.circular(12.0))
                            ),
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                CT.businessStatus,
                                style: TU.smTxtBtn2.copyWith(color: const Color(0xffF5F6F7)),
                              ),
                            ),
                          ).paddingOnly(top: 3,right: 184),
                        ],
                      ).paddingOnly(left: 15),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: const Icon(Icons.chat),
                      // ),
                      GestureDetector(
                        child: const ImageIcon(
                          AssetImage('assets/image/bi_chat-dots.png'),
                          size: 24,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  Text(
                    CT.commonTxtLine,
                    style: TU.bsBTN.copyWith(fontSize: 14),
                  ).paddingOnly(right: 58,top: 20),
                  Text(
                    CT.commonTxtLine2,
                    style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(top: 10),
                  Text(
                    CT.postCaption,
                    style: TU.smTxtBtn2.copyWith(fontSize: 14,color: const Color(0xff333333)),
                  ).paddingOnly(right: 258,top: 20),
                  Text(
                    CT.commonTxtLine3,
                    style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                  ).paddingOnly(top: 10),
                  Text(
                    CT.media,
                    style: TU.smTxtBtn2.copyWith(fontSize: 14,color: const Color(0xff333333)),
                  ).paddingOnly(right: 307,top: 20),
                  SizedBox(
                    height: 35,
                    child: ListView.builder(
                      itemCount: 1,
                      //itemCount: TopTradingList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ListBTN();
                      },
                    ),
                  ).paddingOnly(top: 13),
                  Row(
                    children: [
                      Text(
                        CT.facebook,
                        style: TU.smTxtBtn2.copyWith(fontSize: 16,color: const Color(0xff333333)),
                      ),
                      GestureDetector(
                          child: const Icon(
                              Icons.file_download_outlined,
                              size: 24,
                          ).paddingOnly(left: 241),
                        onTap: () {
                            Get.to(const DownloadScreen());
                        },
                      ),
                    ],
                  ).paddingOnly(top: 23),
                  Row(
                    children: [
                      Text(
                        CT.fulfilment,
                        style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                      ),
                      Text(
                        CT.fulfilmentDate,
                        style: TU.bsBTN.copyWith(fontSize: 12),
                      ).paddingOnly(left: 136),
                    ],
                  ).paddingOnly(top: 13),
                  Row(
                    children: [
                      Text(
                        CT.budget,
                        style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A),fontStyle: FontStyle.italic),
                      ),
                      Text(
                        CT.budgetPrice,
                        style: TU.bsBTN.copyWith(fontSize: 12),
                      ).paddingOnly(left: 241),
                    ],
                  ).paddingOnly(top: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/image/Rectangle 1.png',height: 104,width: 104,),
                      Image.asset('assets/image/Rectangle 2.png',height: 104,width: 104,),
                      Image.asset('assets/image/Rectangle 3.png',height: 104,width: 104,),
                    ],
                  ).paddingOnly(top: 16),
                  Row(
                    children: [
                      Text(
                        CT.instagram,
                        style: TU.smTxtBtn2.copyWith(fontSize: 16,color: const Color(0xff333333)),
                      ),
                      const Icon(Icons.file_download_outlined,size: 24).paddingOnly(left: 243),
                    ],
                  ).paddingOnly(top: 23),
                  Row(
                    children: [
                      Text(
                        CT.fulfilment,
                        style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                      ),
                      Text(
                        CT.fulfilmentDate,
                        style: TU.bsBTN.copyWith(fontSize: 12),
                      ).paddingOnly(left: 136),
                    ],
                  ).paddingOnly(top: 13),
                  Row(
                    children: [
                      Text(
                        CT.budget,
                        style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A),fontStyle: FontStyle.italic),
                      ),
                      Text(
                        CT.budgetPrice,
                        style: TU.bsBTN.copyWith(fontSize: 12),
                      ).paddingOnly(left: 241),
                    ],
                  ).paddingOnly(top: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/image/Rectangle 1.png',height: 104,width: 104,),
                      Image.asset('assets/image/Rectangle 2.png',height: 104,width: 104,),
                      Image.asset('assets/image/Rectangle 3.png',height: 104,width: 104,),
                    ],
                  ).paddingOnly(top: 16),
                  Row(
                    children: [
                      Container(
                        width: 165,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12.0))
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              CT.decline,
                              style: TU.txtButton.copyWith(color: Colors.black),
                            ),
                          ).paddingAll(10),
                        ),
                      ),
                      Container(
                        width: 165,
                        height: 50,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12.0))
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff6A58FB),
                          ),
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              CT.accept,
                              style: TU.txtButton.copyWith(color: Colors.white),
                            ),
                          ).paddingAll(10),
                        ),
                      ).paddingOnly(left: 30),
                    ],
                  ).paddingOnly(top: 37,bottom: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

ListBTN(){
  return Row(
    children: [
      ListBTN1(
          onPressed: () {},
          txt: CT.all
      ),
      const SizedBox(width: 5,),
      ListBTN2(
          onPressed: () {},
          txt: CT.facebook
      ),
      const SizedBox(width: 5,),
      ListBTN2(
          onPressed: () {},
          txt: CT.instagram
      ),
      const SizedBox(width: 5,),
      ListBTN2(
          onPressed: () {},
          txt: CT.twitter
      ),
      const SizedBox(width: 5,),
      ListBTN2(
          onPressed: () {},
          txt: CT.fashion
      ),
    ],
  );
}