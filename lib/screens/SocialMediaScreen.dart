import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/HomePage.dart';
import 'package:starprospect/utility/CommonButton.dart';

import '../utility/Colors.dart';
import '../utility/CommonAppBar.dart';
import '../utility/Text.dart';
import '../utility/TextStyle.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: 'Add Social Media',
        style: const TextStyle(
          color: Color(0xffFFFFFF),
          fontFamily: 'SF UI Display',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
        centerTitle: true,
        action: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 15),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => const HomePage(),), (route) => false);
                  },
                  child: const Text(
                    'Skip',
                    style: TU.appBarActionTxt,
                  ),
              ),
          ),
        ],
      ),
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Container(
              //color: pageColor,
              decoration: BoxDecoration(
                  //color: Color(0xff6A58FB),
                  gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: CU.background,
              )),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              const SizedBox(
                                height: 15,
                              ),
                              //Instagram:
                              SizedBox(
                                height: 58,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      const SizedBox(width: 20),
                                      Image.asset(
                                        'assets/image/Instagram.png',
                                        width: 30,
                                        height: 30,
                                      ),
                                      const SizedBox(width: 20),
                                      const Text(
                                        'Instagram',
                                        style: TU.smTxt2,
                                      ),
                                      const SizedBox(width: 100),
                                      SizedBox(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white.withOpacity(0.5),
                                              border: Border.all(
                                                color: Colors.blue,
                                              ),
                                              borderRadius: BorderRadius.circular(10)),
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 18, top: 9, bottom: 9, right: 18),
                                            child: Text(
                                              'Connect',
                                              style: TU.smTxtBtn2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //Facebook:
                              const SizedBox(height: 15),
                              SizedBox(
                                height: 58,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      const SizedBox(width: 20),
                                      Image.asset(
                                        'assets/image/Facebook (1).png',
                                        width: 30,
                                        height: 30,
                                      ),
                                      const SizedBox(width: 20),
                                      const Text(
                                        'Facebook',
                                        style: TU.smTxt2,
                                      ),
                                      const SizedBox(width: 100),
                                      SizedBox(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white.withOpacity(0.5),
                                              border: Border.all(
                                                color: Colors.blue,
                                              ),
                                              borderRadius: BorderRadius.circular(10)),
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 18, top: 9, bottom: 9, right: 18),
                                            child: Text(
                                              'Connect',
                                              style: TU.smTxtBtn2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //Linkdin:
                              const SizedBox(height: 15),
                              SizedBox(
                                height: 58,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      const SizedBox(width: 20),
                                      Image.asset(
                                        'assets/image/linkedin.png',
                                        width: 30,
                                        height: 30,
                                      ),
                                      const SizedBox(width: 20),
                                      const Text(
                                        'Linkdin',
                                        style: TU.smTxt2,
                                      ),
                                      const SizedBox(width: 120),
                                      SizedBox(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white.withOpacity(0.5),
                                              border: Border.all(
                                                color: Colors.blue,
                                              ),
                                              borderRadius: BorderRadius.circular(10)),
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 18, top: 9, bottom: 9, right: 18),
                                            child: Text(
                                              'Connect',
                                              style: TU.smTxtBtn2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //Twitter:
                              const SizedBox(height: 15),
                              SizedBox(
                                height: 58,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      const SizedBox(width: 20),
                                      Image.asset(
                                        'assets/image/Twitter.png',
                                        width: 30,
                                        height: 30,
                                      ),
                                      const SizedBox(width: 20),
                                      const Text(
                                        'Twitter',
                                        style: TU.smTxt2,
                                      ),
                                      const SizedBox(width: 120),
                                      SizedBox(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white.withOpacity(0.5),
                                              border: Border.all(
                                                color: Colors.blue,
                                              ),
                                              borderRadius: BorderRadius.circular(10)),
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 18, top: 9, bottom: 9, right: 18),
                                            child: Text(
                                              'Connect',
                                              style: TU.smTxtBtn2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //Discord:
                              const SizedBox(height: 15),
                              SizedBox(
                                height: 58,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      const SizedBox(width: 20),
                                      Image.asset(
                                        'assets/image/discord.png',
                                        width: 30,
                                        height: 30,
                                      ),
                                      const SizedBox(width: 20),
                                      const Text(
                                        'Discord',
                                        style: TU.smTxt2,
                                      ),
                                      const SizedBox(width: 115),
                                      SizedBox(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white.withOpacity(0.5),
                                              border: Border.all(
                                                color: Colors.blue,
                                              ),
                                              borderRadius: BorderRadius.circular(10)),
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 18, top: 9, bottom: 9, right: 18),
                                            child: Text(
                                              'Connect',
                                              style: TU.smTxtBtn2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              //Tiktok:
                              SizedBox(
                                height: 58,
                                child: Container(
                                  height: 58,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      border: Border.all(
                                        color: Colors.black.withOpacity(0.1),
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                          'assets/image/Tik Tok.png',
                                          width: 30,
                                          height: 30,
                                        ),
                                        const SizedBox(width: 15),
                                        const Text(
                                          'Tiktok',
                                          style: TU.smTxt,
                                        ),
                                        const SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 45),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white.withOpacity(0.5),
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius: BorderRadius.circular(10)),
                                            child: const Padding(
                                              padding: EdgeInsets.only(left: 18, top: 9, bottom: 9, right: 18),
                                              child: Text(
                                                '/Username',
                                                style: TU.smTxtBtn,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white.withOpacity(0.5),
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                              borderRadius: BorderRadius.circular(10)),
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 18, top: 9, bottom: 9, right: 18),
                                            child: Text(
                                              'Follower',
                                              style: TU.smTxtBtn,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15,),
                              //Youtube:
                              SizedBox(
                                height: 58,
                                child: Container(
                                  height: 58,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      border: Border.all(
                                        color: Colors.black.withOpacity(0.1),
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                          'assets/image/YouTube.png',
                                          width: 30,
                                          height: 30,
                                        ),
                                        const SizedBox(width: 15),
                                        const Text(
                                          'Youtube',
                                          style: TU.smTxt,
                                        ),
                                        const SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 30),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white.withOpacity(0.5),
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius: BorderRadius.circular(10)),
                                            child: const Padding(
                                              padding: EdgeInsets.only(left: 18, top: 9, bottom: 9, right: 18),
                                              child: Text(
                                                '/Username',
                                                style: TU.smTxtBtn,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white.withOpacity(0.5),
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                              borderRadius: BorderRadius.circular(10)),
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 18, top: 9, bottom: 9, right: 18),
                                            child: Text(
                                              'Subscriber',
                                              style: TU.smTxtBtn,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              //Save Button
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 70, bottom: 30),
                                child: CommonButton(
                                  txt: CT.saveBtn,
                                  onPressed: () {
                                    Get.offAll(const HomePage());
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
