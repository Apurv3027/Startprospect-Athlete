import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/CommonButton.dart';
import 'package:starprospect/utility/CommonDropDown.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class FilterAthletes extends StatefulWidget {
  const FilterAthletes({Key? key}) : super(key: key);

  @override
  _FilterAthletesState createState() => _FilterAthletesState();
}

class _FilterAthletesState extends State<FilterAthletes>{

  bool value = false;
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool checkBoxValue = true;
  bool checkBoxValue1 = true;

  String? dropdownvalue = CT.searchArea;
  String? dropdownvalueUniversity = CT.selectInstitution;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: CT.filter,
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
              onPressed: () {},
              child: const Text(
                  CT.reset,
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
                            children: [
                              Text(
                                  CT.team,
                                style: TU.txtButton.copyWith(color: Colors.black),
                              ).paddingOnly(right: 316,top: 15),
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
                                    CT.mensTeam,
                                    style: TU.bsBTN.copyWith(color: const Color(0xff333333)),
                                  ),
                                ],
                              ).paddingOnly(right: 265,top: 18),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  //CheckBox
                                  Checkbox(
                                    value: value,
                                    onChanged: (newValue) {
                                      setState(() {
                                        value = newValue!;
                                      });
                                      //const Text('Remember Me');
                                    },
                                  ),
                                  Text(
                                    CT.womensTeam,
                                    style: TU.bsBTN.copyWith(color: const Color(0xff7B838A)),
                                  ),
                                ],
                              ).paddingOnly(right: 235,top: 17),
                              Text(
                                CT.location,
                                style: TU.txtButton.copyWith(color: Colors.black),
                              ).paddingOnly(right: 289,top: 33),
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
                                    items: <String>[CT.searchArea]
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
                                  Container(
                                      margin: const EdgeInsets.symmetric(vertical: 15),
                                      padding: const EdgeInsets.only(left: 10),
                                      child: const Icon(Icons.location_on_outlined)),
                                ],
                              ).paddingOnly(top: 15),
                              Text(
                                CT.univer,
                                style: TU.txtButton.copyWith(color: Colors.black),
                              ).paddingOnly(right: 278,top: 30,bottom: 15),
                              CommonDropDownButton(
                                value: dropdownvalueUniversity,
                                //isExpanded: true,
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Color(0xff333333),
                                ),
                                style: TU.dropDown,
                                onChanged: (String? newValue) {},
                                items: <String>[CT.selectInstitution]
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                              Text(
                                CT.followerCount,
                                style: TU.txtButton.copyWith(color: Colors.black),
                              ).paddingOnly(right: 235,top: 30),
                              Row(
                                children: [
                                  Text(
                                    CT.instagram,
                                    style: TU.cardDis.copyWith(color: const Color(0xff7B838A)),
                                  ),
                                  Text(
                                    CT.followerCountEX1,
                                    style: TU.cardDis.copyWith(color: const Color(0xff6A58FB)),
                                  ).paddingOnly(left: 222),
                                ],
                              ).paddingOnly(top: 15),
                              Image.asset('assets/image/Group Instagram.png').paddingOnly(left: 15,right: 15,top: 12),
                              Row(
                                children: [
                                  Text(
                                    CT.twitter,
                                    style: TU.cardDis.copyWith(color: const Color(0xff7B838A)),
                                  ),
                                  Text(
                                    CT.followerCountEX2,
                                    style: TU.cardDis.copyWith(color: const Color(0xff6A58FB)),
                                  ).paddingOnly(left: 232),
                                ],
                              ).paddingOnly(top: 15),
                              Image.asset('assets/image/Group Twitter.png').paddingOnly(left: 15,right: 15,top: 12),
                              Row(
                                children: [
                                  Text(
                                    CT.tiktok,
                                    style: TU.cardDis.copyWith(color: const Color(0xff7B838A)),
                                  ),
                                  Text(
                                    CT.followerCountEX3,
                                    style: TU.cardDis.copyWith(color: const Color(0xff6A58FB)),
                                  ).paddingOnly(left: 232),
                                ],
                              ).paddingOnly(top: 15),
                              Image.asset('assets/image/Group Tiktok.png').paddingOnly(left: 15,right: 15,top: 12),
                              Text(
                                CT.verifiedStatus,
                                style: TU.txtButton.copyWith(color: Colors.black),
                              ).paddingOnly(right: 240,top: 37),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  //CheckBox
                                  Checkbox(
                                    value: checkBoxValue1,
                                    onChanged: (newValue) {
                                      setState(() {
                                        checkBoxValue1 = newValue!;
                                      });
                                      //const Text('Remember Me');
                                    },
                                  ),
                                  const Text(
                                    CT.instagram,
                                    style: TU.fpMainEx,
                                  ),
                                ],
                              ).paddingOnly(right: 230,top: 19),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  //CheckBox
                                  Checkbox(
                                    value: value1,
                                    onChanged: (newValue) {
                                      setState(() {
                                        value1 = newValue!;
                                      });
                                      //const Text('Remember Me');
                                    },
                                  ),
                                  Text(
                                    CT.twitter,
                                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                                  ),
                                ],
                              ).paddingOnly(right: 250,top: 19),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  //CheckBox
                                  Checkbox(
                                    value: value2,
                                    onChanged: (newValue) {
                                      setState(() {
                                        value2 = newValue!;
                                      });
                                      //const Text('Remember Me');
                                    },
                                  ),
                                  Text(
                                    CT.tiktok,
                                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                                  ),
                                ],
                              ).paddingOnly(right: 261,top: 19),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  //CheckBox
                                  Checkbox(
                                    value: value3,
                                    onChanged: (newValue) {
                                      setState(() {
                                        value3 = newValue!;
                                      });
                                      //const Text('Remember Me');
                                    },
                                  ),
                                  Text(
                                    CT.youtube,
                                    style: TU.fpMainEx.copyWith(color: const Color(0xff7B838A)),
                                  ),
                                ],
                              ).paddingOnly(right: 240,top: 19),
                              Text(
                                CT.followerCount,
                                style: TU.txtButton.copyWith(color: Colors.black),
                              ).paddingOnly(right: 235,top: 35),
                              Row(
                                children: [
                                  Text(
                                    CT.followerCountYears,
                                    style: TU.cardDis.copyWith(color: const Color(0xff7B838A)),
                                  ),
                                  Text(
                                    CT.followerCountEX4,
                                    style: TU.cardDis.copyWith(color: const Color(0xff6A58FB)),
                                  ).paddingOnly(left: 294),
                                ],
                              ).paddingOnly(top: 15),
                              Image.asset('assets/image/Group Years.png').paddingOnly(left: 15,right: 15,top: 12),
                              Padding(
                                  padding: const EdgeInsets.only(top: 37,bottom: 30),
                                child: CommonButton(
                                  txt: CT.submitBTN,
                                  onPressed: () {
                                    Get.back();
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