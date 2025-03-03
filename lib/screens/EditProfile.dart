import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/CommonButton.dart';

import '../utility/Colors.dart';
import '../utility/CommonAppBar.dart';
import '../utility/CommonTextField.dart';
import '../utility/Text.dart';
import '../utility/TextStyle.dart';
import 'OTPVerification.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String? dropdownvalue = CT.male;
  String? yearValue = CT.year2020;
  String? value = CT.everyone;
  bool _alertCheck = false;

  List<String> chips = [
    CT.chipBasBall,//1
    CT.chipBas,//2
    CT.chipSoc,//3
    CT.chipFoot,//4
    CT.chipCheer,//5
    CT.chipCycle,//6
    CT.chipDiving,//7
    CT.chipHockey,//8
    CT.chipLac,//9
    CT.chipRowing,//10
    CT.chipRug,//11
    CT.chipSoft,//12
    CT.chipSwim,//13
    CT.chipTennis,//14
    CT.chipTrack,//15
    CT.chipCross,//16
    CT.chipVolly,//17
    CT.chipWrest,//18
  ];

  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController sclController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController conPassController = TextEditingController();
  TextEditingController faithController = TextEditingController();
  TextEditingController familyController = TextEditingController();
  TextEditingController academicsController = TextEditingController();
  TextEditingController satController = TextEditingController();
  TextEditingController actController = TextEditingController();
  TextEditingController classRankController = TextEditingController();
  TextEditingController classSizeController = TextEditingController();
  TextEditingController awardsController = TextEditingController();
  TextEditingController ncaaController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  bool isObscure = false;
  bool isObscure2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: CT.editProfile,
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: CU.background,
                )),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.asset('assets/image/image 9.png'),
                      ),
                      const Positioned(
                        top: 12,
                        left: 350,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage('assets/image/Group Grid12.png'),
                        ),
                      ),
                      const Positioned(
                        top: 95,
                        left: 165,
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage('assets/image/logo1.png'),
                        ),
                      ),
                      const Positioned(
                        top: 160,
                        left: 225,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage('assets/image/Group Grid13.png'),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //const SizedBox(height: 23, width: 177),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Card(
                          shape: const Border(
                            right: BorderSide(color: Colors.black12),
                            top: BorderSide(color: Colors.black12),
                            left: BorderSide(color: Colors.black12),
                            bottom: BorderSide(color: Colors.black12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  CT.personalInfo,
                                  style: TU.smTxtBtn.copyWith(color: Colors.black,fontSize: 18),
                                ).paddingOnly(right: 132),
                                //Name
                                CTF.commonProfileTextField(
                                  prefixIcon: const Icon(Icons.person_outline_rounded),
                                  suggestionTxt: CT.nameEX,
                                  name: CT.name,
                                  controller: nameController,
                                  action: TextInputAction.next,
                                ).paddingOnly(top: 21),
                                //UserName
                                CTF.commonProfileTextField(
                                  prefixIcon: const Icon(Icons.person_outline_rounded),
                                  suggestionTxt: CT.usernameEX,
                                  name: CT.username,
                                  controller: usernameController,
                                  action: TextInputAction.next,
                                ).paddingOnly(top: 15),
                                //email and verify ..
                                SizedBox(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          Text(CT.emailAddress, style: TU.color999999w40016.copyWith(fontSize: 14)),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 150),
                                            child: Icon(
                                              Icons.security_rounded,
                                              size: 14,
                                              color: Colors.red,
                                            ),
                                          ),
                                          GestureDetector(
                                            child: Text(
                                              CT.verify,
                                              style: TU.verify2.copyWith(
                                                fontSize: 12,
                                                color: Colors.red,
                                              ),
                                            ),
                                            onTap: () {
                                              showModalBottomSheet(
                                                backgroundColor: Colors.transparent,
                                                context: context,
                                                builder: (context) {
                                                  return Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    height: MediaQuery.of(context).size.height * 0.4,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all(color: Colors.blue, width: 3),
                                                        borderRadius: const BorderRadius.only(
                                                            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: (MediaQuery.of(context).size.height * 0.4) * 0.35,
                                                          child: const Icon(Icons.mail_outline_rounded,
                                                              color: Colors.blue, size: 60),
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: (MediaQuery.of(context).size.height * 0.4) * 0.15,
                                                          alignment: Alignment.center,
                                                          child: const Text(
                                                            CT.veremail,
                                                            style: TU.btmsheetMain,
                                                          ),
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: (MediaQuery.of(context).size.height * 0.4) * 0.30,
                                                          alignment: Alignment.center,
                                                          child: const Text(
                                                            CT.disemail,
                                                            style: TextStyle(fontSize: 20),
                                                            textAlign: TextAlign.center,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: ((MediaQuery.of(context).size.height * 0.4) * 0.20) - 6,
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              const SizedBox(
                                                                width: 15,
                                                              ),
                                                              BtnNo(
                                                                onPressed: () {
                                                                  Navigator.of(context).pop();
                                                                },
                                                                txt: CT.no,
                                                              ),
                                                              const SizedBox(
                                                                width: 15,
                                                              ),
                                                              BtnYes(
                                                                onPressed: () {
                                                                  Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder: (context) =>
                                                                      const OTPVerificationScreen2(),
                                                                    ),
                                                                  );
                                                                },
                                                                txt: CT.yes,
                                                              ),
                                                              const SizedBox(
                                                                width: 15,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextFormField(
                                        controller: emailController,
                                        textInputAction: TextInputAction.next,
                                        cursorColor: Colors.blue,
                                        decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                          hintText: CT.emailAddressEX,
                                          hintStyle: const TextStyle(fontSize: 14),
                                          prefixIcon: const Icon(Icons.mail_outline_rounded),
                                          //suffixIcon: btn,
                                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ).paddingOnly(top: 15),
                                //mobile and verify ..
                                SizedBox(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          Text(CT.mobile, style: TU.color999999w40016.copyWith(fontSize: 14)),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 160),
                                            child: Icon(Icons.security_rounded,size: 14,),
                                          ),
                                          GestureDetector(
                                            child: Text(
                                              CT.verified,
                                              style: TU.verify2.copyWith(fontSize: 12),
                                            ),
                                            onTap: () {
                                              showModalBottomSheet(
                                                backgroundColor: Colors.transparent,
                                                context: context,
                                                builder: (context) {
                                                  return Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    height: MediaQuery.of(context).size.height * 0.4,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all(color: Colors.blue, width: 3),
                                                        borderRadius: const BorderRadius.only(
                                                            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: (MediaQuery.of(context).size.height * 0.4) * 0.35,
                                                          child: const Icon(Icons.phone_android_rounded,
                                                              color: Colors.blue, size: 60),
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: (MediaQuery.of(context).size.height * 0.4) * 0.15,
                                                          alignment: Alignment.center,
                                                          child: const Text(
                                                            CT.vermob,
                                                            style: TU.btmsheetMain,
                                                          ),
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: (MediaQuery.of(context).size.height * 0.4) * 0.30,
                                                          alignment: Alignment.center,
                                                          child: const Text(
                                                            CT.dismob,
                                                            style: TextStyle(fontSize: 20),
                                                            textAlign: TextAlign.center,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: ((MediaQuery.of(context).size.height * 0.4) * 0.20) - 6,
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              const SizedBox(
                                                                width: 15,
                                                              ),
                                                              BtnNo(
                                                                onPressed: () {
                                                                  Navigator.of(context).pop();
                                                                },
                                                                txt: CT.no,
                                                              ),
                                                              const SizedBox(
                                                                width: 15,
                                                              ),
                                                              BtnYes(
                                                                onPressed: () {
                                                                  Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder: (context) =>
                                                                      const OTPVerificationScreen2(),
                                                                    ),
                                                                  );
                                                                },
                                                                txt: CT.yes,
                                                              ),
                                                              const SizedBox(
                                                                width: 15,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextFormField(
                                        controller: mobileController,
                                        textInputAction: TextInputAction.next,
                                        cursorColor: Colors.blue,
                                        decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                          hintText: CT.mobileEX,
                                          hintStyle: const TextStyle(fontSize: 14),
                                          prefixIcon: const Icon(Icons.phone_android_rounded),
                                          //suffixIcon: btn,
                                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ).paddingOnly(top: 15),
                                const SizedBox(
                                  height: 15,
                                ),
                                //date of birth
                                CTF.commonProfileTextField(
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
                                  style: TU.color999999w40016.copyWith(fontSize: 14),
                                ).paddingOnly(right: 273),
                                const SizedBox(
                                  height: 10,
                                ),
                                //Gender DropDown
                                Stack(
                                  children: <Widget>[
                                    DropdownButtonFormField(
                                      decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
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
                                      style: const TextStyle(color: Color(0xff333333), fontSize: 15),
                                      items: <String>[CT.male, CT.female, CT.other]
                                          .map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Text(value),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue = newValue;
                                        });
                                      },
                                    ),
                                    Container(
                                        margin: const EdgeInsets.symmetric(vertical: 15),
                                        padding: const EdgeInsets.only(left: 10),
                                        child: const Icon(Icons.transgender_rounded)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                //School/College
                                CTF.commonProfileTextField(
                                  prefixIcon: const Icon(Icons.school_outlined),
                                  suggestionTxt: CT.sclEX,
                                  name: CT.school,
                                  controller: sclController,
                                  action: TextInputAction.next,
                                ),
                                //address
                                CTF.commonProfileTextField(
                                  prefixIcon: const Icon(Icons.location_on_outlined),
                                  suggestionTxt: CT.addressEX,
                                  name: CT.address,
                                  controller: addressController,
                                  action: TextInputAction.next,
                                ).paddingOnly(top: 15),
                                const SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                          ),
                        ).paddingOnly(top: 50),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Card(
                          shape: const Border(
                            right: BorderSide(color: Colors.black12),
                            top: BorderSide(color: Colors.black12),
                            left: BorderSide(color: Colors.black12),
                            bottom: BorderSide(color: Colors.black12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  CT.additionalInfo,
                                  style: TU.smTxtBtn.copyWith(color: Colors.black,fontSize: 18),
                                ).paddingOnly(right: 110),
                                CTF.commonProfileTextField(
                                  suggestionTxt: CT.christian,
                                  name: CT.faith,
                                  controller: faithController,
                                  action: TextInputAction.next,
                                ).paddingOnly(top: 16),
                                CTF.commonProfileTextField(
                                  suggestionTxt: CT.txtEx,
                                  name: CT.familyCir,
                                  controller: familyController,
                                  action: TextInputAction.next,
                                ).paddingOnly(top: 20),
                                CTF.commonProfileTextField(
                                  suggestionTxt: CT.txtEx,
                                  name: CT.acad,
                                  controller: academicsController,
                                  action: TextInputAction.next,
                                ).paddingOnly(top: 20),
                                CTF.commonProfileTextField(
                                  suggestionTxt: CT.txtEx2,
                                  name: CT.sat,
                                  controller: satController,
                                  action: TextInputAction.next,
                                ).paddingOnly(top: 20),
                                CTF.commonProfileTextField(
                                  suggestionTxt: CT.christian,
                                  name: CT.faith,
                                  controller: faithController,
                                  action: TextInputAction.next,
                                ).paddingOnly(top: 20),
                                CTF.commonProfileTextField(
                                  suggestionTxt: CT.txtEx2,
                                  name: CT.act,
                                  controller: actController,
                                  action: TextInputAction.next,
                                ).paddingOnly(top: 20),
                                CTF.commonProfileTextField(
                                  suggestionTxt: CT.rank2,
                                  name: CT.classRank,
                                  controller: classRankController,
                                  action: TextInputAction.next,
                                ).paddingOnly(top: 20),
                                CTF.commonProfileTextField(
                                  suggestionTxt: CT.txtEx2,
                                  name: CT.classSize,
                                  controller: classSizeController,
                                  action: TextInputAction.next,
                                ).paddingOnly(top: 20),
                                CTF.commonProfileTextField(
                                  suggestionTxt: CT.txtEx3,
                                  name: CT.awardsHono,
                                  controller: awardsController,
                                  action: TextInputAction.next,
                                ).paddingOnly(top: 20),
                                CTF.commonProfileTextField(
                                  suggestionTxt: CT.yes,
                                  name: CT.ncaa,
                                  controller: ncaaController,
                                  action: TextInputAction.next,
                                ).paddingOnly(top: 20),
                                //gender
                                Text(
                                  CT.graduationYear,
                                  style: TU.color999999w40016.copyWith(fontSize: 14),
                                ).paddingOnly(right: 215,top: 20),
                                const SizedBox(
                                  height: 10,
                                ),
                                //Gender DropDown
                                DropdownButtonFormField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                    isDense: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  isExpanded: true,
                                  value: yearValue,
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: Color(0xff333333),
                                  ),
                                  iconSize: 25,
                                  elevation: 8,
                                  style: const TextStyle(color: Color(0xff333333), fontSize: 15),
                                  items: <String>[CT.year2020, CT.year2021, CT.year2022]
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      yearValue = newValue;
                                    });
                                  },
                                ),
                                Text(
                                  CT.selecteedSport,
                                  style: TU.color999999w40016.copyWith(fontSize: 14),
                                ).paddingOnly(right: 215,top: 20),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12)
                                  ),
                                  child: ChipList(
                                    shouldWrap: true,
                                    listOfChipNames: chips,
                                    style: TU.bsBTN.copyWith(fontSize: 12),
                                    activeBgColorList: [Colors.grey.withOpacity(0.1)],
                                    inactiveBgColorList: [Colors.grey.withOpacity(0.1)],
                                    activeTextColorList: const [Color(0xff000000)],
                                    inactiveTextColorList: const [Color(0xff000000)],
                                    listOfChipIndicesCurrentlySeclected: const [0],
                                    activeBorderColorList: const [Colors.blue],
                                    inactiveBorderColorList: const [Colors.grey],
                                  ),
                                ).paddingOnly(top: 15),
                                Text(
                                  CT.sport,
                                  style: TU.color999999w40016.copyWith(fontSize: 14),
                                ).paddingOnly(right: 285,top: 20),
                                Text(
                                  CT.selectPos,
                                  style: TU.color999999w40016.copyWith(fontSize: 14),
                                ).paddingOnly(right: 230,top: 20),
                                Image.asset('assets/image/input form.png').paddingOnly(top: 28),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          CT.height,
                                          style: TU.color999999w40016.copyWith(fontSize: 14),
                                        ).paddingOnly(right: 64),
                                        SizedBox(
                                          width: 155,
                                          child: TextFormField(
                                            textInputAction: TextInputAction.next,
                                            controller: heightController,
                                            cursorColor: Colors.blue,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                              hintText: CT.heightEX,
                                              hintStyle: const TextStyle(fontSize: 14),
                                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ).paddingOnly(right: 15),
                                    Column(
                                      children: [
                                        Text(
                                          CT.weight,
                                          style: TU.color999999w40016.copyWith(fontSize: 14),
                                        ).paddingOnly(right: 63),
                                        SizedBox(
                                          width: 155,
                                          child: TextFormField(
                                            textInputAction: TextInputAction.next,
                                            controller: heightController,
                                            cursorColor: Colors.blue,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                              hintText: CT.weightEX,
                                              hintStyle: const TextStyle(fontSize: 14),
                                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ).paddingOnly(top: 20),
                                Text(
                                  CT.measurable,
                                  style: TU.color999999w40016.copyWith(fontSize: 14),
                                ).paddingOnly(top: 20,right: 200,bottom: 10),
                                Row(
                                  children: [
                                    Card(
                                      child: Container(
                                        width: 100,
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            right: BorderSide(color: Colors.blue),
                                            top: BorderSide(color: Colors.blue),
                                            bottom: BorderSide(color: Colors.blue),
                                            left: BorderSide(color: Colors.blue),
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Image.asset('assets/image/Metrics1.png',height: 66,).paddingOnly(bottom: 10)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ).paddingOnly(right: 5),
                                    Card(
                                      child: Container(
                                        width: 100,
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            right: BorderSide(color: Colors.grey),
                                            top: BorderSide(color: Colors.grey),
                                            bottom: BorderSide(color: Colors.grey),
                                            left: BorderSide(color: Colors.grey),
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Image.asset('assets/image/Metrics2.png',height: 66,).paddingOnly(bottom: 10)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ).paddingOnly(right: 5),
                                    Card(
                                      child: Container(
                                        width: 100,
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            right: BorderSide(color: Colors.grey),
                                            top: BorderSide(color: Colors.grey),
                                            bottom: BorderSide(color: Colors.grey),
                                            left: BorderSide(color: Colors.grey),
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Image.asset('assets/image/Metrics3.png',height: 66,).paddingOnly(bottom: 10)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Card(
                                      child: Container(
                                        width: 100,
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            right: BorderSide(color: Colors.grey),
                                            top: BorderSide(color: Colors.grey),
                                            bottom: BorderSide(color: Colors.grey),
                                            left: BorderSide(color: Colors.grey),
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Image.asset('assets/image/Metrics4.png',height: 66,).paddingOnly(bottom: 10)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ).paddingOnly(right: 5),
                                    Card(
                                      child: Container(
                                        width: 100,
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            right: BorderSide(color: Colors.grey),
                                            top: BorderSide(color: Colors.grey),
                                            bottom: BorderSide(color: Colors.grey),
                                            left: BorderSide(color: Colors.grey),
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Image.asset('assets/image/Metrics5.png',height: 66,).paddingOnly(bottom: 10)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ).paddingOnly(right: 5),
                                    Card(
                                      child: Container(
                                        width: 100,
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            right: BorderSide(color: Colors.grey),
                                            top: BorderSide(color: Colors.grey),
                                            bottom: BorderSide(color: Colors.grey),
                                            left: BorderSide(color: Colors.grey),
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Image.asset('assets/image/Metrics6.png',height: 66,).paddingOnly(bottom: 10)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Card(
                                  child: Container(
                                    width: 100,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        right: BorderSide(color: Colors.grey),
                                        top: BorderSide(color: Colors.grey),
                                        bottom: BorderSide(color: Colors.grey),
                                        left: BorderSide(color: Colors.grey),
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Image.asset('assets/image/Metrics7.png',height: 66,).paddingOnly(bottom: 10)
                                        ],
                                      ),
                                    ),
                                  ),
                                ).paddingOnly(right: 225),
                              ],
                            ),
                          ),
                        ).paddingOnly(top: 10),
                      ),
                      Text(
                        CT.alertTxt,
                        style: TU.color999999w40016.copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),
                      ).paddingOnly(right: 182,top: 20,left: 20),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            value: _alertCheck,
                            onChanged: (bool? value) {
                              setState(() {
                                _alertCheck = value!;
                              });
                            },
                          ).paddingOnly(bottom: 25),
                          Text(
                            CT.alertTxtEx,
                            style: TU.bsBTN.copyWith(fontSize: 12,color: Colors.grey),
                          ),
                        ],
                      ).paddingOnly(left: 10),
                      Text(
                        CT.privacySetting,
                        style: TU.color999999w40016.copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),
                      ).paddingOnly(right: 189,top: 20,left: 20),
                      Text(
                        CT.privacySettingEx,
                        style: TU.bsBTN.copyWith(fontSize: 12,color: Colors.grey),
                      ).paddingOnly(left: 20,top: 10),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        isExpanded: true,
                        value: value,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xff333333),
                        ),
                        iconSize: 25,
                        elevation: 8,
                        style: const TextStyle(color: Color(0xff333333), fontSize: 15),
                        items: <String>[CT.everyone, CT.me, CT.you]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            value = newValue;
                          });
                        },
                      ).paddingOnly(left: 15,right: 15,top: 20),
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: CU.background,
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(12.0))
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff6A58FB),
                          ),
                          onPressed: (){},
                          child: SizedBox(
                            height: 50,
                            child: Center(
                              child: Text(
                                CT.saveBtn,
                                style: TU.buttonStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                            ).paddingAll(10),
                          ),
                        ),
                      ).paddingOnly(top: 20,bottom: 20,left: 15,right: 15),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}