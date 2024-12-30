import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/BusinessViewCardDetails.dart';
import 'package:starprospect/utility/CommonCard.dart';
import 'package:starprospect/utility/CommonDropDown.dart';
import 'package:starprospect/utility/TextStyle.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> with SingleTickerProviderStateMixin {
  final TextEditingController _searchViewController = TextEditingController();

  String? dropdownvalue = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Stack(
                children: [
                  TextField(
                    controller: _searchViewController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                      hintText: 'Search',
                      hintStyle: const TextStyle(fontSize: 15),
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 215,
                    child: SizedBox(
                      width: 141,
                      height: 40,
                      child: CommonDropDownButton(
                        value: dropdownvalue,
                        isExpanded: true,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          size: 15,
                          color: Color(0xff333333),
                        ),
                        style: TU.dropDown,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue;
                          });
                        },
                        items: <String>[
                          'All',
                          'Pending',
                          'In Progress',
                          'In Review',
                          'Payment Process',
                          'Canceled',
                          'Completed',
                          'Saved',
                          'Reported'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 9.0),
                              child: Text(
                                value,
                                style: TU.smTxt,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CommonOfferRequestCard(
                    onTap: () {
                      Get.to(const BusinessViewCardDetails());
                    },
                    txt: 'In Progress',
                    color: const Color(0xffF2994A),
                  );
                },
              ).paddingOnly(top: 15),
              CommonOfferRequestCard(
                onTap: () {},
                txt: 'In Progress',
                color: const Color(0xffF2994A),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
