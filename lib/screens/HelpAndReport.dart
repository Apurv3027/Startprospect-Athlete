import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/HelpAndSupport.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class HelpAndReport extends StatefulWidget {
  const HelpAndReport({Key? key}) : super(key: key);

  @override
  State<HelpAndReport> createState() => _HelpAndReportState();
}

class _HelpAndReportState extends State<HelpAndReport> {

  String? dealValue = CT.dealValue1;
  String? issueValue = CT.issueValue1;

  TextEditingController _controller = new TextEditingController();
  int length = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: CT.HelpNDSupport,
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              CT.selectDeal,
              style: TU.bsBTN.copyWith(color: const Color(0xff333333)),
            ).paddingOnly(left: 15,top: 20,right: 269),
            DropdownButtonFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              isExpanded: true,
              value: dealValue,
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Color(0xff333333),
              ),
              iconSize: 25,
              elevation: 8,
              style: TU.dropDown,
              items: <String>[CT.dealValue1, CT.dealValue2]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dealValue = newValue;
                });
              },
            ).paddingOnly(left: 15,top: 10,right: 15),
            Text(
              'Issue',
              style: TU.bsBTN.copyWith(color: const Color(0xff333333)),
            ).paddingOnly(left: 15,top: 10,right: 319),
            DropdownButtonFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              isExpanded: true,
              value: issueValue,
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Color(0xff333333),
              ),
              iconSize: 25,
              elevation: 8,
              style: TU.dropDown,
              items: <String>[CT.issueValue1, CT.issueValue2]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  issueValue = newValue;
                });
              },
            ).paddingOnly(left: 15,top: 10,right: 15),
            TextField(
              minLines: 2,
              maxLines: 5,
              controller: _controller,
              maxLength: 150,
              onChanged: (String value) {
                setState(() {
                  length = value.length;
                });
              },
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                hintText: CT.desIssue,
                hintStyle: TextStyle(
                    color: Colors.grey
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
              ),
            ).paddingOnly(top: 10,left: 15,right: 15),
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
                onPressed: (){
                  Get.to(const HelpAndSupportChat2());
                },
                child: SizedBox(
                  height: 50,
                  child: Center(
                    child: Text(
                      CT.reqChat,
                      style: TU.txtButton.copyWith(color: Colors.white),
                    ),
                  ).paddingAll(10),
                ),
              ),
            ).paddingOnly(left: 15.0, right: 15.0, top: 15),
            Text(
              CT.history,
              style: TU.bsBTN.copyWith(color: const Color(0xff000000),fontSize: 14),
            ).paddingOnly(left: 15,top: 25,right: 309),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Card(
                  shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: ListTile(
                    title: Text(
                      CT.dealValue1,
                      style: TU.bsBTN.copyWith(fontSize: 14),
                    ),
                    subtitle: Text(
                      CT.historyNum,
                      style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
                    ),
                    trailing: Column(
                      children: [
                        const Icon(Icons.chevron_right,color: Colors.black,).paddingOnly(top: 10,left: 50),
                        Text(
                          CT.historyDate,
                          style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
                        ).paddingOnly(top: 5),
                      ],
                    ),
                    onTap: () {},
                  ),
                ).paddingOnly(left: 15,right: 15);
              },
            ).paddingOnly(top: 16),
            // Card(
            //   shape: const OutlineInputBorder(
            //     borderRadius: BorderRadius.all(Radius.circular(12)),
            //   ),
            //   child: ListTile(
            //     title: Text(
            //       'Wally Energy Bareisu....',
            //       style: TU.bsBTN.copyWith(fontSize: 14),
            //     ),
            //     subtitle: Text(
            //       '#123456',
            //       style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
            //     ),
            //     trailing: Column(
            //       children: [
            //         const Icon(Icons.chevron_right,color: Colors.black,).paddingOnly(top: 10,left: 50),
            //         Text(
            //           '10/10/2022',
            //           style: TU.bsBTN.copyWith(fontSize: 12, color: const Color(0xff828282)),
            //         ).paddingOnly(top: 5),
            //       ],
            //     ),
            //     onTap: () {},
            //   ),
            // ).paddingOnly(left: 15, right: 15, top: 16),
            // RadioListTile(
            //   value: "Saving Account - XXX02362",
            //   groupValue: account,
            //   onChanged: (value){
            //     setState(() {
            //       account = value.toString();
            //     });
            //   },
            // ),
            // RadioListTile(
            //   value: "Saving Account - XXX0954",
            //   groupValue: account,
            //   onChanged: (value){
            //     setState(() {
            //       account = value.toString();
            //     });
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}