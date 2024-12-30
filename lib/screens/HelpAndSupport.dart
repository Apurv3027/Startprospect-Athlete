import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';
import '../utility/CommonAppBar.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({Key? key}) : super(key: key);

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(const HelpAndSupportChat());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: CT.HelpNDSupport,
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/image/help.png',height: 148,).paddingOnly(top: 253,left: 78,right: 75),
              Text(
                  CT.HelpNDSupportDes,
                  style: TU.bsBTN.copyWith(fontSize: 14),
              ).paddingOnly(left: 15,right: 15,top: 18),
            ],
          ),
        ),
      ),
    );
  }
}

class HelpAndSupportChat extends StatefulWidget {
  const HelpAndSupportChat({Key? key}) : super(key: key);

  @override
  State<HelpAndSupportChat> createState() => _HelpAndSupportChatState();
}

class _HelpAndSupportChatState extends State<HelpAndSupportChat> {

  TextEditingController txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: CT.HelpNDSupport,
        automaticallyImplyLeading: false,
        leadingIcon: IconButton(
            onPressed: (){
              Get.back();
              Get.back();
            },
            icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/image/Line 4.png',width: 80,).paddingOnly(left: 57),
                  const Text(CT.HelpNDSupportDate).paddingOnly(left: 15,right: 17),
                  Image.asset('assets/image/Line 4.png',width: 80,).paddingOnly(right: 52),
                ],
              ).paddingOnly(top: 20),
              Card(
                shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )
                ),
                child: Text(
                    CT.HelpNDSupportMsg1,
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff2B2E32)),
                ).paddingAll(15),
              ).paddingOnly(left: 15,right: 92,top: 30),
              Text(
                CT.HelpNDSupportMsgTime,
                style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xffAFB1B2)),
              ).paddingOnly(left: 15,top: 11,right: 295),
              Card(
                color: const Color.fromARGB(255, 131, 185, 243),
                shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    )
                ),
                child: Text(
                  CT.HelpNDSupportMsg2,
                  style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff2B2E32)),
                ).paddingAll(15),
              ).paddingOnly(left: 124,right: 15,top: 20),
              Row(
                children: [
                  const Icon(Icons.done_all_rounded,),
                  Text(
                    CT.HelpNDSupportMsgTime,
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xffAFB1B2)),
                  ),
                ],
              ).paddingOnly(left: 274,top: 11,right: 15),
              Card(
                color: const Color.fromARGB(255, 131, 185, 243),
                shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    )
                ),
                child: Text(
                  CT.HelpNDSupportMsg3,
                  style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff2B2E32)),
                ).paddingAll(15),
              ).paddingOnly(left: 88,right: 15,top: 15),
              Row(
                children: [
                  const Icon(Icons.done_rounded,),
                  Text(
                    CT.HelpNDSupportMsgTime,
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xffAFB1B2)),
                  ),
                ],
              ).paddingOnly(left: 274,top: 11,right: 15),
              Row(
                children: [
                  SizedBox(
                    width: 328,
                    child: TextFormField(
                      controller: txtController,
                      textInputAction: TextInputAction.done,
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                        hintText: CT.typing,
                        hintStyle: const TextStyle(fontSize: 15),
                        prefixIcon: const Icon(Icons.link_rounded),
                        suffixIcon: const Icon(Icons.mic_rounded),
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                      ),
                    ).paddingOnly(left: 15),
                  ),
                  Image.asset('assets/image/Send2.png',height: 38,width: 38,).paddingOnly(left: 9,right: 15),
                ],
              ).paddingOnly(top: 195,bottom: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class HelpAndSupportChat2 extends StatefulWidget {
  const HelpAndSupportChat2({Key? key}) : super(key: key);

  @override
  State<HelpAndSupportChat2> createState() => _HelpAndSupportChat2State();
}

class _HelpAndSupportChat2State extends State<HelpAndSupportChat2> {

  TextEditingController txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: CT.HelpNDSupport,
        automaticallyImplyLeading: false,
        leadingIcon: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/image/Line 4.png',width: 80,).paddingOnly(left: 57),
                  const Text(CT.HelpNDSupportDate).paddingOnly(left: 15,right: 17),
                  Image.asset('assets/image/Line 4.png',width: 80,).paddingOnly(right: 52),
                ],
              ).paddingOnly(top: 20),
              Card(
                shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )
                ),
                child: Text(
                    CT.HelpNDSupportMsg1,
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff2B2E32)),
                ).paddingAll(15),
              ).paddingOnly(left: 15,right: 92,top: 30),
              Text(
                CT.HelpNDSupportMsgTime,
                style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xffAFB1B2)),
              ).paddingOnly(left: 15,top: 11,right: 295),
              Card(
                color: const Color.fromARGB(255, 131, 185, 243),
                shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    )
                ),
                child: Text(
                  CT.HelpNDSupportMsg2,
                  style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff2B2E32)),
                ).paddingAll(15),
              ).paddingOnly(left: 124,right: 15,top: 20),
              Row(
                children: [
                  const Icon(Icons.done_all_rounded,),
                  Text(
                    CT.HelpNDSupportMsg2,
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xffAFB1B2)),
                  ),
                ],
              ).paddingOnly(left: 150,top: 11,right: 15),
              Card(
                color: const Color.fromARGB(255, 131, 185, 243),
                shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    )
                ),
                child: Text(
                  CT.HelpNDSupportMsg3,
                  style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff2B2E32)),
                ).paddingAll(15),
              ).paddingOnly(left: 88,right: 15,top: 15),
              Row(
                children: [
                  const Icon(Icons.done_rounded,),
                  Text(
                    CT.HelpNDSupportMsgTime,
                    style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xffAFB1B2)),
                  ),
                ],
              ).paddingOnly(left: 274,top: 11,right: 15),
              Row(
                children: [
                  SizedBox(
                    width: 328,
                    child: TextFormField(
                      controller: txtController,
                      textInputAction: TextInputAction.done,
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                        hintText: CT.typing,
                        hintStyle: const TextStyle(fontSize: 15),
                        prefixIcon: const Icon(Icons.link_rounded),
                        suffixIcon: const Icon(Icons.mic_rounded),
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                      ),
                    ).paddingOnly(left: 15),
                  ),
                  Image.asset('assets/image/Send2.png',height: 38,width: 38,).paddingOnly(left: 9,right: 15),
                ],
              ).paddingOnly(top: 195,bottom: 20),
            ],
          ),
        ),
      ),
    );
  }
}