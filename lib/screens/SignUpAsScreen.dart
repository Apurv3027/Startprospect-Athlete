import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/CommonButton.dart';
import 'package:starprospect/utility/CommonDropDown.dart';

import '../utility/Colors.dart';
import '../utility/Text.dart';
import '../utility/TextStyle.dart';
import 'SignUpScreen.dart';

class SignUpAsScreen extends StatefulWidget {
  const SignUpAsScreen({Key? key}) : super(key: key);

  @override
  State<SignUpAsScreen> createState() => _SignUpAsScreenState();
}

class Item {
  Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class _SignUpAsScreenState extends State<SignUpAsScreen> {
  String? dropdownvalue = 'Athletes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Container(
                        width: 375,
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        height: 210,
                        child: Image.asset('assets/image/logo.png')),
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
                                  CT.whoAreYou,
                                  style: TU.mainStyle.copyWith(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  CT.whoAreYouTxt,
                                  style: TU.disStyle,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                //DropDownButton
                                Stack(
                                  children: [
                                    CommonDropDownButton(
                                      value: dropdownvalue,
                                      isExpanded: true,
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        color: Color(0xff333333),
                                      ),
                                      style: TU.dropDown,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue = newValue;
                                        });
                                      },
                                      items: <String>['Athletes', 'Cricket', 'Swimming', 'Yoga']
                                          .map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Text(value),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                    // DropdownButtonFormField(
                                    //   decoration: InputDecoration(
                                    //     contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                    //     isDense: true,
                                    //     border: OutlineInputBorder(
                                    //       borderRadius: BorderRadius.circular(12),
                                    //     ),
                                    //   ),
                                    //   isExpanded: true,
                                    //   value: dropdownvalue,
                                    //   icon: const Icon(
                                    //     Icons.arrow_drop_down,
                                    //     color: Color(0xff333333),
                                    //   ),
                                    //   iconSize: 25,
                                    //   elevation: 8,
                                    //   style: TU.dropDown,
                                    //   items: <String>['Athletes', 'Cricket', 'Swimming', 'Yoga']
                                    //       .map<DropdownMenuItem<String>>((String value) {
                                    //     return DropdownMenuItem<String>(
                                    //       value: value,
                                    //       child: Padding(
                                    //         padding: const EdgeInsets.only(left: 30.0),
                                    //         child: Text(value),
                                    //       ),
                                    //     );
                                    //   }).toList(),
                                    //   onChanged: (String? newValue) {
                                    //     setState(() {
                                    //       dropdownvalue = newValue;
                                    //     });
                                    //   },
                                    // ),
                                    Container(
                                        margin: const EdgeInsets.symmetric(vertical: 15),
                                        padding: const EdgeInsets.only(left: 10),
                                        child: const Icon(Icons.person_outline_rounded)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 331),
                                  child: CommonButton(
                                    txt: CT.continueBtn,
                                    onPressed: () {
                                      Get.to(const SignUpScreen());
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                          )),
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