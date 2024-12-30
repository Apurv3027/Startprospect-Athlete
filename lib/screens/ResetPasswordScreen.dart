import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/LoginScreen.dart';
import 'package:starprospect/utility/CommonButton.dart';

import '../utility/Colors.dart';
import '../utility/CommonTextField.dart';
import '../utility/Text.dart';
import '../utility/TextStyle.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController passController = TextEditingController();
  TextEditingController conPassController = TextEditingController();

  bool _isObscure = false;
  bool _isObscure2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CA(
      //   titleEx: '',
      // ),
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
                    borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
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
                      Text(
                        CT.resetPassword,
                        style: TU.mainStyle.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        CT.resetPasswordDetails,
                        style: TU.disStyle,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //Password
                      CTF.commonPasswordTextField(
                        obsecure: _isObscure,
                        name: CT.passTxt,
                        action: TextInputAction.done,
                        suggestionTxt: CT.passEX,
                        controller: passController,
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        btn: IconButton(
                          icon: Icon(
                            _isObscure ? Icons.visibility : Icons.visibility_off,
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
                        height: 20,
                      ),
                      //Confirm Password
                      CTF.commonPasswordTextField(
                        obsecure: _isObscure2,
                        name: CT.conPassTxt,
                        action: TextInputAction.done,
                        suggestionTxt: CT.conPassEX,
                        controller: conPassController,
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        btn: IconButton(
                          icon: Icon(
                            _isObscure2 ? Icons.visibility : Icons.visibility_off,
                            //color: colorFFCA27,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure2 = !_isObscure2;
                            });
                          },
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure2 = !_isObscure2;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //Save Button
                      CommonButton(
                        txt: CT.saveBtn,
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                                  (route) => false);
                        },
                      ),
                      const SizedBox(
                        height: 345,
                      ),
                      //const Padding(padding: EdgeInsets.only(bottom: 404)),
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
