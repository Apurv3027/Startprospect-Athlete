import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/Colors.dart';
import '../utility/CommonAppBar.dart';
import '../utility/Text.dart';
import '../utility/TextStyle.dart';
import 'OTPVerification.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: '',
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
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                CT.forgetPass,
                                style: TU.mainStyle.copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                CT.forgetPassDetails,
                                style: TU.disStyle,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              //Via SMS:
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const OTPVerificationScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue.withOpacity(0.1), borderRadius: BorderRadius.circular(12)),
                                  margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 27, top: 29, bottom: 29),
                                        child: Icon(
                                          Icons.phone_android_rounded,
                                          color: Colors.blue,
                                          size: 40,
                                        ),
                                      ),
                                      Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(left: 20, right: 190),
                                            child: Text(
                                              CT.viasms,
                                              style: TU.fpMain,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 20, right: 139, top: 14),
                                            child: Text(
                                              CT.viasmsex,
                                              style: TU.fpMainEx,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //Via Email:
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const OTPVerificationScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue.withOpacity(0.1), borderRadius: BorderRadius.circular(12)),
                                  margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: <Widget>[
                                      const Padding(
                                        padding: EdgeInsets.only(left: 27, top: 29, bottom: 29),
                                        child: Icon(
                                          Icons.mail_outline_rounded,
                                          color: Colors.blue,
                                          size: 40,
                                        ),
                                      ),
                                      Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(left: 20, right: 175),
                                            child: Text(
                                              CT.viaemail,
                                              style: TU.fpMain,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 20, right: 100, top: 14),
                                            child: Text(
                                              CT.viaemailex,
                                              style: TU.fpMainEx,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ).paddingOnly(top: 15,bottom: 385),
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
