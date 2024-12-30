import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/EventDetailsScreen.dart';
import 'package:starprospect/utility/CommonCard.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class CollegesEvent extends StatefulWidget {
  const CollegesEvent({Key? key}) : super(key: key);

  @override
  State<CollegesEvent> createState() => _CollegesEventState();
}

class _CollegesEventState extends State<CollegesEvent>{

  final TextEditingController _searchViewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                controller: _searchViewController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  hintText: CT.search,
                  hintStyle: const TextStyle(fontSize: 15),
                  prefixIcon: const Icon(Icons.search),
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                ),
              ),
              Text(
                CT.upcomingStatus,
                style: TU.txtButton.copyWith(color: const Color(0xff7B838A)),
              ).paddingOnly(top: 15,right: 271),
              SizedBox(
                height: 175,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 200,
                      height: 157,
                      child: GestureDetector(
                        child: Card(
                          child: Column(
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage('assets/image/TeamLogo.png'),
                              ).paddingOnly(top: 18),
                              Text(
                                CT.collegeEventName,
                                style: TU.smTxtBtn2.copyWith(fontSize: 14, color: Colors.black),
                              ).paddingOnly(top: 3),
                              const Text(
                                CT.collegeEventAdd,
                                style: TU.smTxt,
                              ).paddingOnly(top: 3),
                              Container(
                                width: 160,
                                height: 35,
                                decoration: const BoxDecoration(
                                  //color: const Color(0xff6A58FB).withOpacity(0.1),
                                    borderRadius: BorderRadius.all(Radius.circular(12.0))
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white.withOpacity(0.5),
                                  ),
                                  onPressed: () {},
                                  child: Center(
                                    child: Text(
                                      CT.collegeEventTime,
                                      style: TU.bsBTN.copyWith(color: const Color(0xff6A58FB),fontSize: 14),
                                    ),
                                  ),
                                ),
                              ).paddingOnly(bottom: 5),
                            ],
                          ),
                        ).paddingOnly(top: 15),
                        onTap: () {
                          Get.to(const EventDetails());
                        },
                      ),
                    );
                  },
                ),
              ),
              Text(
                CT.completeStatus,
                style: TU.txtButton.copyWith(color: const Color(0xff7B838A)),
              ).paddingOnly(top: 15,right: 200),
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CommonCollegesEventCard(
                    onTap: () {},
                  );
                },
              ).paddingOnly(top: 15),
            ],
          ).paddingOnly(bottom: 10),
        ),
      ),
    );
  }

}