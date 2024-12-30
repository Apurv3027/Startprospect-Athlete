import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/CommonTextField.dart';
import 'package:starprospect/utility/TextStyle.dart';

class MyProfileDeals extends StatefulWidget {
  const MyProfileDeals({Key? key}) : super(key: key);

  @override
  _MyProfileDealsState createState() => _MyProfileDealsState();
}

class _MyProfileDealsState extends State<MyProfileDeals>{

  TextEditingController amountController = TextEditingController();

  int? _value = 1;

  bool _valueCheck = false;

  // single choice value
  int tag = 3;

  int selectedIndex = -1;

  List<String> chips = [
    "General",//1
    "Beauty/makeup",//2
    "Fashion",//3
    "Tech",//4
    "Health/Fitness/Food",//5
    "Dance",//6
    "Meme",//7
    "Travel",//8
    "Family",//9
    "Gaming",//10
    "Athletes/Sports",//11
    "Comedy",//12
    "Theme",//13
    "Finance/Stocks/Crypto",//14
    "Food",//15
    "Pets",//16
    "Blog",//17
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Text(
                'Select a platform that you can work with:',
                style: TU.dealsTxt,
              ).paddingOnly(right: 65,top: 27),
              SizedBox(
                height: 45,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int position) {
                    return InkWell(
                      onTap: () => setState(() => selectedIndex=position),
                      child: Card(
                        shape: (selectedIndex==position)
                            ? const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            side: BorderSide(color: Colors.green))
                            : null,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/image/Instagram.png',
                              height: 35,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ).paddingOnly(top: 10),
              // SizedBox(
              //   height: 25,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: 10,
              //     itemBuilder: (BuildContext context, int position) {
              //       return Row(
              //         children: [
              //           Checkbox(
              //             checkColor: Colors.white,
              //             //fillColor: MaterialStateProperty.resolveWith(getColor),
              //             value: _valueCheck,
              //             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              //             onChanged: (bool? value) {
              //               setState(() {
              //                 _valueCheck = value!;
              //               });
              //             },
              //           ),
              //           Text(
              //             'Post',
              //             style: TU.bsBTN.copyWith(fontSize: 12),
              //           ),
              //         ],
              //       );
              //     },
              //   ),
              // ).paddingOnly(top: 10),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        //fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: _valueCheck,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        onChanged: (bool? value) {
                          setState(() {
                            _valueCheck = value!;
                          });
                        },
                      ),
                      Text(
                        'Post',
                        style: TU.bsBTN.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        //fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: _valueCheck,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        onChanged: (bool? value) {
                          setState(() {
                            _valueCheck = value!;
                          });
                        },
                      ),
                      Text(
                        'Story',
                        style: TU.bsBTN.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        //fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: _valueCheck,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        onChanged: (bool? value) {
                          setState(() {
                            _valueCheck = value!;
                          });
                        },
                      ),
                      Text(
                        'Reels',
                        style: TU.bsBTN.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        //fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: _valueCheck,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        onChanged: (bool? value) {
                          setState(() {
                            _valueCheck = value!;
                          });
                        },
                      ),
                      Text(
                        'IGTV',
                        style: TU.bsBTN.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ).paddingOnly(right: 40,top: 10),
              // CheckboxListTile(
              //     value: _valueCheck,
              //   onChanged: (bool? value) {
              //       setState(() {
              //         _valueCheck = !_valueCheck;
              //       });
              //   },
              //   title: const Text('Post'),
              // ),
              CTF.commonTextField(
                prefixIcon: const Icon(Icons.attach_money_rounded),
                suggestionTxt: '500.00 |',
                name: 'Amount',
                controller: amountController,
                action: TextInputAction.next,
              ).paddingOnly(top: 15),
              Text(
                'Recommended Price : 600.00',
                style: TU.bsBTN.copyWith(fontSize: 14,color: const Color(0xff7B838A)),
              ).paddingOnly(right: 139,top: 5),
              const Text(
                'Niche',
                style: TU.dealsTxt,
              ).paddingOnly(right: 300,top: 23),
              ChipList(
                shouldWrap: true,
                listOfChipNames: chips,
                style: TU.bsBTN.copyWith(fontSize: 12),
                activeBgColorList: [Colors.grey.withOpacity(0.1)],
                inactiveBgColorList: [Colors.grey.withOpacity(0.1)],
                activeTextColorList: const [Color(0xff000000)],
                inactiveTextColorList: const [Color(0xff000000)],
                listOfChipIndicesCurrentlySeclected: [0],
                activeBorderColorList: const [Colors.blue],
                inactiveBorderColorList: const [Colors.grey],
              ),
              // const Text(
              //   'Write Niche',
              //   style: TU.dealsTxt,
              // ).paddingOnly(right: 230,top: 25),
              // Row(
              //   children: [
              //     Checkbox(
              //       checkColor: Colors.white,
              //       value: _valueCheck,
              //       onChanged: (bool? value) {
              //         setState(() {
              //           _valueCheck = value!;
              //         });
              //       },
              //     ).paddingOnly(bottom: 75),
              //     Column(
              //       children: [
              //         const Text(
              //             'Compliance Policy',
              //             style: TU.dealsTxt,
              //         ).paddingOnly(right: 165),
              //         Text(
              //             'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nNunc vulputate libero et velit interdum, ac aliquet odio \nmattis. Class aptent taciti sociosqu ad litora torquent per \nconubia nostra, per inceptos himenaeos.Terms & \nConditions | Privacy Policy.',
              //             style: TU.bsBTN.copyWith(fontSize: 12,fontFamily: 'SF UI Display'),
              //         ).paddingOnly(top: 5),
              //       ],
              //     ),
              //   ],
              // ),
              Container(
                height: 50,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff6A58FB),
                    // primary: const Color(0xff6A58FB),
                    // onPrimary: const Color(0xff4599F4),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'Add Deals',
                      style: TU.txtButton.copyWith(color: Colors.white),
                    ),
                  ).paddingAll(10),
                ),
              ).paddingOnly(top: 25),
            ],
          ),
        ),
      ),
    );
  }

}