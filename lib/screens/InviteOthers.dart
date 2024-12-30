import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';
import '../utility/CommonAppBar.dart';

class InviteOthers extends StatefulWidget {
  const InviteOthers({Key? key}) : super(key: key);

  @override
  State<InviteOthers> createState() => _InviteOthersState();
}

class _InviteOthersState extends State<InviteOthers> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: CT.inviteOthers,
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              shape: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 45,
                    width: 45,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/image/Rectangle 9.png'),
                    ),
                  ).paddingOnly(left: 150,right: 150,top: 15),
                  Text(
                    CT.user,
                    style: TU.bsBTN.copyWith(fontSize: 15),
                  ).paddingOnly(top: 15,left: 137,right: 136),
                  const Text(
                    CT.inviteOtherDes,
                    style: TU.smTxt2,
                  ).paddingOnly(top: 10,left: 15,right: 9),
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
                      onPressed: (){},
                      child: SizedBox(
                        height: 40,
                        width: 315,
                        child: Center(
                          child: Text(
                            CT.invite,
                            style: TU.buttonStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ).paddingAll(10),
                      ),
                    ),
                  ).paddingOnly(left: 15,right: 15,top: 18,bottom: 15),
                ],
              ),
            ).paddingOnly(left: 15,right: 15,top: 15),
          ],
        ),
      ),
    );
  }
}