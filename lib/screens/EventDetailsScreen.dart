import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({Key? key}) : super(key: key);

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails>{
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
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: CU.background,
                  )),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 250,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: const Icon(Icons.close,size: 20,color: Colors.white,),
                                ).paddingOnly(right: 121),
                                Image.asset('assets/image/Group Date.png',height: 56).paddingOnly(right: 159),
                              ],
                            ),
                            Text(
                                CT.practice,
                              style: TU.smTxtBtn.copyWith(fontSize: 22,color: Colors.white),
                            ).paddingOnly(top: 20,left: 142,right: 142),
                            Row(
                              children: [
                                Text(
                                  CT.practiceTime,
                                  style: TU.fpMainEx.copyWith(color: Colors.white),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 7),
                                  width: 5.0,
                                  height: 5.0,
                                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                                ),
                                Text(
                                  CT.practiceTiming,
                                  style: TU.fpMainEx.copyWith(color: Colors.white),
                                ),
                              ],
                            ).paddingOnly(top: 15,left: 72,right: 70),
                          ],
                        ).paddingOnly(top: 65),
                    ),
                    Expanded(
                      child: Container(
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
                            children: [
                              Card(
                                child: ListTile(
                                  leading: const CircleAvatar(
                                    backgroundImage: AssetImage('assets/image/logo1.png'),
                                  ),
                                  title: Text(
                                    CT.urGoing,
                                    style: TU.smTxtBtn2.copyWith(fontSize: 16,color: Colors.black),
                                  ),
                                  trailing: Container(
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                    ),
                                    child: OutlinedButton(
                                        onPressed: () {},
                                        child: Text(
                                            CT.changeStatus,
                                          style: TU.smTxt.copyWith(color: const Color(0xff6A58FB)),
                                        ),
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                              ).paddingOnly(top: 10),
                              SizedBox(
                                height: 296,
                                child: Card(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                              CT.practicePlace,
                                            style: TU.bsBTN.copyWith(fontSize: 14),
                                          ),
                                          Container(
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(50)),
                                            ),
                                            child: OutlinedButton(
                                              onPressed: () {},
                                              child: Text(
                                                CT.changeStatus,
                                                style: TU.smTxt.copyWith(color: const Color(0xff6A58FB)),
                                              ),
                                            ),
                                          ).paddingOnly(left: 15),
                                        ],
                                      ).paddingOnly(top: 15,left: 15,right: 15),
                                      Text(
                                        CT.practicePlaceAdd,
                                        style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                                      ).paddingOnly(right: 275),
                                      Text(
                                        CT.practicePlaceAdd2,
                                        style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                                      ).paddingOnly(right: 235),
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                        child: Image.asset('assets/image/map 1.png',height: 200),
                                      ).paddingOnly(top: 10),
                                    ],
                                  ),
                                ),
                              ).paddingOnly(top: 20),
                              const Text(
                                  CT.weather,
                                style: TU.smTxt2,
                              ).paddingOnly(top: 24),
                              SizedBox(
                                height: 75,
                                child: Card(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                              CT.weatherTime,
                                            style: TU.bsBTN.copyWith(fontSize: 14),
                                          ),
                                          Text(
                                              CT.weatherDegree,
                                            style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                                          ).paddingOnly(right: 21),
                                          Text(
                                              CT.weatherRainPer,
                                            style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                                          ).paddingOnly(left: 10),
                                        ],
                                      ).paddingOnly(left: 15,top: 10),
                                      Column(
                                        children: [
                                          Text(
                                              CT.weatherTime,
                                            style: TU.bsBTN.copyWith(fontSize: 14),
                                          ),
                                          Text(
                                              CT.weatherDegree,
                                            style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                                          ).paddingOnly(right: 21),
                                          Text(
                                              CT.weatherRainPer,
                                            style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                                          ).paddingOnly(left: 10),
                                        ],
                                      ).paddingOnly(left: 15,top: 10),
                                      Column(
                                        children: [
                                          Text(
                                              CT.weatherTime,
                                            style: TU.bsBTN.copyWith(fontSize: 14),
                                          ),
                                          Text(
                                              CT.weatherDegree,
                                            style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                                          ).paddingOnly(right: 21),
                                          Text(
                                              CT.weatherRainPer,
                                            style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                                          ).paddingOnly(left: 10),
                                        ],
                                      ).paddingOnly(left: 15,top: 10),
                                      Column(
                                        children: [
                                          Text(
                                              CT.weatherTime,
                                            style: TU.bsBTN.copyWith(fontSize: 14),
                                          ),
                                          Text(
                                              CT.weatherDegree,
                                            style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
                                          ).paddingOnly(right: 21),
                                          Text(
                                              CT.weatherRainPer,
                                            style: TU.smTxt.copyWith(color: const Color(0xff7B838A)),
                                          ).paddingOnly(left: 10),
                                        ],
                                      ).paddingOnly(left: 15,top: 10),
                                    ],
                                  ),
                                ),
                              ).paddingOnly(top: 10),
                              SizedBox(
                                height: 85,
                                child: Card(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                              CT.playerRVSP,
                                            style: TU.bsBTN.copyWith(fontSize: 14),
                                          ),
                                          Image.asset('assets/image/Frame 1.png',height: 16).paddingOnly(left: 125),
                                        ],
                                      ).paddingAll(15),
                                      Row(
                                        children: [
                                          Text(
                                              CT.staffRVSP,
                                            style: TU.bsBTN.copyWith(fontSize: 14),
                                          ),
                                          Image.asset('assets/image/Frame 2.png',height: 16).paddingOnly(left: 135),
                                        ],
                                      ).paddingOnly(left: 15),
                                    ],
                                  ),
                                ),
                              ).paddingOnly(top: 20,bottom: 15),
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