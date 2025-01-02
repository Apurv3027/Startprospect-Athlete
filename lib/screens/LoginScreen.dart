import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/CommonButton.dart';
import 'package:starprospect/utility/Text.dart';

import '../utility/Colors.dart';
import '../utility/CommonTextField.dart';
import '../utility/TextStyle.dart';
import 'ForgetPasswordScreeen.dart';
import 'HomePage.dart';
import 'SignUpAsScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  // show the password or not
  bool _isObscure = true;

  //bool value = false;
  bool checkBoxValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: CU.background,
            )),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Container(
                    width: 375,
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    height: 210,
                    child: Image.asset(
                      'assets/image/logo.png',
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // width: 500,
                      decoration: const BoxDecoration(
                          color: CU.colorFFFFFF,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          )),
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(height: 20),
                            Text(
                              CT.wellcome,
                              style: TU.mainStyle
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              CT.logindis,
                              style: TU.disLogin,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            //email
                            CTF.commonTextField(
                              prefixIcon:
                                  const Icon(Icons.mail_outline_rounded),
                              suggestionTxt: CT.emailEX,
                              name: CT.emailTxt,
                              controller: emailController,
                              action: TextInputAction.next,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            //Password
                            CTF.commonPasswordTextField(
                              obsecure: _isObscure,
                              name: CT.passTxt,
                              action: TextInputAction.done,
                              suggestionTxt: CT.passEX,
                              controller: passController,
                              prefixIcon:
                                  const Icon(Icons.lock_outline_rounded),
                              btn: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  //color: colorFFCA27,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                //CheckBox
                                Checkbox(
                                  value: checkBoxValue,
                                  onChanged: (newValue) {
                                    setState(() {
                                      checkBoxValue = newValue!;
                                    });
                                    //const Text('Remember Me');
                                  },
                                ),
                                Text(
                                  CT.remember,
                                  style: TU.Ex2,
                                ),
                                const SizedBox(
                                  width: 55,
                                ),
                                GestureDetector(
                                  child: Text(
                                    CT.forgetPass,
                                    style: TU.Ex2,
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgetPasswordScreen(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            CommonButton(
                              txt: CT.signInBtn,
                              onPressed: () {
                                Get.offAll(const Zoom());
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  CT.continueTxt,
                                  style: TU.dis,
                                ),
                              ],
                            ).paddingOnly(top: 23),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                //Google
                                SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: CircleAvatar(
                                    radius: 37,
                                    backgroundColor: Color(0xffF14336),
                                    backgroundImage:
                                        AssetImage('assets/image/Google.png'),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                //FaceBook
                                SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: CircleAvatar(
                                    radius: 37,
                                    backgroundColor: Color(0xff4267B2),
                                    backgroundImage:
                                        AssetImage('assets/image/Facebook.png'),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                //AppleId
                                SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: CircleAvatar(
                                    radius: 22,
                                    backgroundColor: Color(0xff152A3C),
                                    backgroundImage:
                                        AssetImage('assets/image/Apple.png'),
                                  ),
                                ),
                              ],
                            ).paddingOnly(top: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  CT.newUser,
                                  style: TU.dis2,
                                ),
                                //SizedBox(height: 14,width: 112),
                                GestureDetector(
                                  child: const Text(
                                    CT.createAcc,
                                    style: TU.txtButton,
                                  ),
                                  onTap: () {
                                    Get.to(const SignUpAsScreen());
                                  },
                                ),
                              ],
                            ).paddingOnly(top: 20, bottom: 61),
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
      ),
    );
  }
}
