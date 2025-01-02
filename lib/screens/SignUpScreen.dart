import 'package:choice/choice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/LoginScreen.dart';
import 'package:starprospect/utility/CommonButton.dart';

import '../utility/Colors.dart';
import '../utility/CommonTextField.dart';
import '../utility/Text.dart';
import '../utility/TextStyle.dart';
import 'SocialMediaScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? dropdownvalue = 'Male';

  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController sclController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController conPassController = TextEditingController();

  bool _isObscure = true;
  bool _isObscure2 = true;

  List<String> choices = [
    'News',
    'Entertainment',
    'Politics',
    'Automotive',
    'Sports',
    'Education',
    'Fashion',
    'Travel',
    'Food',
    'Tech',
    'Science',
    'Arts'
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   leading: IconButton(
      //     onPressed: () {
      //       Get.back();
      //     },
      //     icon: Icon(
      //       Icons.arrow_back_rounded,
      //       color: Colors.white,
      //     ),
      //   ),
      //   flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //         begin: Alignment.centerLeft,
      //         end: Alignment.centerRight,
      //         colors: CU.background,
      //       ),
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: CU.background,
            ),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: CU.background,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    top: 30,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(height: 23, width: 177),
                      Text(
                        CT.wellcomeToStar,
                        style:
                            TU.mainStyle.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        CT.enterPersonalDetail,
                        style: TU.disStyle,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //Name
                      CTF.commonTextField(
                        prefixIcon: const Icon(Icons.person_outline_rounded),
                        suggestionTxt: CT.nameEX,
                        name: CT.name,
                        controller: nameController,
                        action: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //UserName
                      CTF.commonTextField(
                        prefixIcon: const Icon(Icons.person_outline_rounded),
                        suggestionTxt: CT.usernameEX,
                        name: CT.username,
                        controller: usernameController,
                        action: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //address
                      CTF.commonTextField(
                        prefixIcon: const Icon(Icons.location_on_outlined),
                        suggestionTxt: CT.addressEX,
                        name: CT.address,
                        controller: addressController,
                        action: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //email and verify ..
                      CTF.commonTextField(
                        prefixIcon: const Icon(Icons.mail_outline_rounded),
                        suggestionTxt: CT.emailAddressEX,
                        name: CT.emailAddress,
                        controller: emailController,
                        action: TextInputAction.next,
                        keyBoard: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //mobile and verify ..
                      CTF.commonTextField(
                        prefixIcon: const Icon(Icons.phone_android_rounded),
                        suggestionTxt: CT.mobileEX,
                        name: CT.mobile,
                        controller: mobileController,
                        action: TextInputAction.next,
                        keyBoard: TextInputType.phone,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //date of birth
                      CTF.commonTextField(
                        prefixIcon: const Icon(Icons.calendar_month_rounded),
                        suggestionTxt: CT.dobEX,
                        name: CT.dob,
                        controller: dobController,
                        action: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //gender
                      Text(
                        CT.gender,
                        style: TU.color999999w40016.copyWith(fontSize: 17),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //Gender DropDown
                      Stack(
                        children: [
                          DropdownButtonFormField(
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.fromLTRB(15, 15, 15, 15),
                              isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            isExpanded: true,
                            value: dropdownvalue,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xff333333),
                            ),
                            iconSize: 25,
                            elevation: 8,
                            style: const TextStyle(
                              color: Color(0xff333333),
                              fontSize: 15,
                            ),
                            items: <String>['Male', 'Female', 'Other']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        value == 'Male'
                                            ? Icons.male_rounded
                                            : value == 'Female'
                                            ? Icons.female_rounded
                                            : Icons.transgender_rounded,
                                      ),
                                      SizedBox(width: 10),
                                      Text(value),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //School/College
                      CTF.commonTextField(
                        prefixIcon: const Icon(Icons.school_outlined),
                        suggestionTxt: CT.sclEX,
                        name: CT.scl,
                        controller: sclController,
                        action: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //Primary Sports Field
                      Choice<String>.inline(
                        clearable: true,
                        value: ChoiceSingle.value(selectedValue),
                        onChanged: ChoiceSingle.onChanged(
                          (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                        ),
                        itemCount: choices.length,
                        itemBuilder: (state, i) {
                          return ChoiceChip(
                            selected: state.selected(choices[i]),
                            onSelected: state.onSelected(choices[i]),
                            label: Text(choices[i]),
                          );
                        },
                        listBuilder: ChoiceList.createScrollable(
                          spacing: 10,
                          runSpacing: 10,
                          alignment: WrapAlignment.start,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 25,
                          ),
                        ),
                      ),
                      Container(
                        //margin: const EdgeInsets.all(15.0),
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffa6a6a6),
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                InputChip(
                                  label: const Text(CT.chipBas),
                                  onSelected: (bool value) {},
                                  onDeleted: () {},
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InputChip(
                                  onDeleted: () {},
                                  label: const Text(CT.chipCri),
                                  onSelected: (bool value) {},
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                InputChip(
                                  onDeleted: () {},
                                  label: const Text(CT.chipFoot),
                                  onSelected: (bool value) {},
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InputChip(
                                  onDeleted: () {},
                                  label: const Text(CT.chipRug),
                                  onSelected: (bool value) {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
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
                        height: 15,
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
                            _isObscure2
                                ? Icons.visibility
                                : Icons.visibility_off,
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
                        height: 40,
                      ),
                      //Next Button
                      CommonButton(
                        txt: CT.nextBtn,
                        onPressed: () {
                          Get.to(const SocialMedia());
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // Continue
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            CT.continueTxt,
                            style: TU.dis,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            CT.allreadyUser,
                            style: TU.dis2,
                          ),
                          //SizedBox(height: 14,width: 112),
                          GestureDetector(
                            child: const Text(
                              CT.signIn,
                              style: TU.txtButton,
                            ),
                            onTap: () {
                              Get.offAll(const LoginScreen());
                            },
                          ),
                        ],
                      ).paddingOnly(bottom: 20),
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
