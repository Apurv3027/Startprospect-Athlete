import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/CommonButton.dart';

import '../utility/Colors.dart';
import '../utility/Text.dart';
import '../utility/TextStyle.dart';
import 'ResetPasswordScreen.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CA(
      //   titleEx: '',
      // ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: CU.background,
              )),
          child: Column(
            children: <Widget>[
              IconButton(
                onPressed: (){
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_rounded,color: Colors.white,size: 24),
              ).paddingOnly(top: 42,bottom: 10,right: 336),
              Container(
                width: 700,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const SizedBox(height: 15,),
                      Text(
                        CT.verification,
                        style: TU.mainStyle.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15,),
                      Text(
                        CT.verificationDetails,
                        style: TU.disStyle,
                      ),
                      const SizedBox(height: 20,),
                      const Text(
                        CT.emailAddressEX,
                        style: TU.Ex,
                      ),
                      const SizedBox(height: 28,),
                      const Text(
                        'Enter Code',
                        style: TU.Ex,
                      ),
                      const SizedBox(height: 10,),
                      //OTP Text Field
                      OtpTextField(
                        numberOfFields: 4,
                        fieldWidth: 50,
                        borderRadius: BorderRadius.circular(12),
                        margin: const EdgeInsets.only(left: 25, right: 15),
                        borderColor: const Color(0xFF512DA8),
                        //set to true to show as box or false to show as dash
                        showFieldAsBox: true,
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                      ),
                      const SizedBox(height: 30,),
                      //Open Email Button
                      CommonButton(
                        txt: 'Submit',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ResetPasswordScreen(),),
                          );
                        },
                      ),
                      const SizedBox(height: 404,),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OTPVerificationScreen2 extends StatefulWidget {
  const OTPVerificationScreen2({Key? key}) : super(key: key);

  @override
  State<OTPVerificationScreen2> createState() => _OTPVerificationScreen2State();
}

class _OTPVerificationScreen2State extends State<OTPVerificationScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CA(
      //   titleEx: '',
      // ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: CU.background,
              )),
          child: Column(
            children: <Widget>[
              IconButton(
                onPressed: (){
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_rounded,color: Colors.white,size: 24),
              ).paddingOnly(top: 42,bottom: 10,right: 336),
              Container(
                //width: 700,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const SizedBox(height: 15,),
                      Text(
                        CT.verification,
                        style: TU.mainStyle.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15,),
                      Text(
                        CT.verificationDetails,
                        style: TU.disStyle,
                      ),
                      const SizedBox(height: 20,),
                      const Text(
                        CT.emailAddressEX,
                        style: TU.Ex,
                      ),
                      const SizedBox(height: 28,),
                      const Text(
                        'Enter Code',
                        style: TU.Ex,
                      ),
                      const SizedBox(height: 10,),
                      //OTP Text Field
                      OtpTextField(
                        numberOfFields: 4,
                        fieldWidth: 50,
                        borderRadius: BorderRadius.circular(12),
                        margin: const EdgeInsets.only(left: 25, right: 15),
                        borderColor: const Color(0xFF512DA8),
                        //set to true to show as box or false to show as dash
                        showFieldAsBox: true,
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                      ),
                      const SizedBox(height: 30,),
                      //Open Email Button
                      CommonButton(
                        txt: 'Submit',
                        onPressed: () {
                          //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const SignUpScreen(),), (route) => false);
                          Get.to(const ResetPasswordScreen());
                        },
                      ),
                      const SizedBox(height: 404,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}