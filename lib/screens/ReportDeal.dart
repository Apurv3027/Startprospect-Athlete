import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/TextStyle.dart';

class ReportDeal extends StatefulWidget {
  const ReportDeal({Key? key}) : super(key: key);

  @override
  State<ReportDeal> createState() => _ReportDealState();
}

class _ReportDealState extends State<ReportDeal>{

  final TextEditingController _reasonController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: 'Report Deal',
        style: const TextStyle(
          color: Color(0xffFFFFFF),
          fontFamily: 'SF UI Display',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
        centerTitle: true,
        action: [
          PopupMenuButton(
            shape: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              gapPadding: 10,
              borderSide: BorderSide(color: Color(0xffffffff)),
            ),
            position: PopupMenuPosition.under,
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[],
            onSelected: (value) {},
          ).paddingOnly(top: 6, right: 10),
        ],
      ),
      body: Container(
        //color: pageColor,
        decoration: BoxDecoration(
          //color: Color(0xff6A58FB),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: CU.background,
            )),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                    'Reason',
                  style: TU.bsBTN,
                ),
                TextField(
                  controller: _reasonController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                    hintText: 'Money is not credited',
                    hintStyle: TU.fpMainEx,
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                  ),
                ).paddingOnly(top: 10),
                const Text(
                    'Description',
                  style: TU.bsBTN,
                ).paddingOnly(top: 20),
                TextField(
                  maxLines: 6,
                  controller: _descriptionController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                    hintText: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                    hintStyle: TU.fpMainEx.copyWith(fontSize: 14),
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                  ),
                ).paddingOnly(top: 10),
                Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff6A58FB),
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'Report',
                        style: TU.txtButton.copyWith(color: Colors.white),
                      ),
                    ).paddingAll(10),
                  ),
                ).paddingOnly(top: 332),
              ],
            ),
          ),
        ),
      ),
    );
  }

}