import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/CommonTextField.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';
import '../utility/CommonAppBar.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

  TextEditingController oldPassController = TextEditingController();
  TextEditingController newPassController = TextEditingController();
  TextEditingController conNewPassController = TextEditingController();

  // show the password or not
  bool _isObscure1 = true;
  bool _isObscure2 = true;
  bool _isObscure3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: CT.changePass,
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Old Password
            CTF.commonPasswordTextField(
              obsecure: _isObscure1,
              name: CT.oldPass,
              action: TextInputAction.done,
              suggestionTxt: CT.passEX,
              controller: oldPassController,
              prefixIcon: const Icon(Icons.lock_outline_rounded),
              btn: IconButton(
                icon: Icon(
                  _isObscure1 ? Icons.visibility : Icons.visibility_off,
                  //color: colorFFCA27,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure1 = !_isObscure1;
                  });
                },
              ),
            ).paddingOnly(left: 20,right: 20,top: 20),
            //New Password
            CTF.commonPasswordTextField(
              obsecure: _isObscure2,
              name: CT.newPass,
              action: TextInputAction.done,
              suggestionTxt: CT.passEX,
              controller: newPassController,
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
            ).paddingOnly(left: 20,right: 20,top: 20),
            //Confirm New Password
            CTF.commonPasswordTextField(
              obsecure: _isObscure3,
              name: CT.conNewPass,
              action: TextInputAction.done,
              suggestionTxt: CT.passEX,
              controller: conNewPassController,
              prefixIcon: const Icon(Icons.lock_outline_rounded),
              btn: IconButton(
                icon: Icon(
                  _isObscure3 ? Icons.visibility : Icons.visibility_off,
                  //color: colorFFCA27,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure3 = !_isObscure3;
                  });
                },
              ),
            ).paddingOnly(left: 20,right: 20,top: 20),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: CU.background,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0))
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6A58FB),
                ),
                onPressed: (){
                  Get.back();
                },
                child: SizedBox(
                  height: 50,
                  child: Center(
                    child: Text(
                      CT.updatePass,
                      style: TU.buttonStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ).paddingAll(10),
                ),
              ),
            ).paddingOnly(left: 20,right: 20,top: 304,bottom: 20),
          ],
        ),
      ),
    );
  }
}