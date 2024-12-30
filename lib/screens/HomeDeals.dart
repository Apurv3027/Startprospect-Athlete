import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/DealDetails.dart';
import 'package:starprospect/utility/CommonButton.dart';
import 'package:starprospect/utility/CommonCard.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class HomeDeals extends StatefulWidget {
  const HomeDeals({Key? key}) : super(key: key);

  @override
  State<HomeDeals> createState() => _HomeDealsState();
}

class _HomeDealsState extends State<HomeDeals> with SingleTickerProviderStateMixin{

  TextEditingController _searchViewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.1),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: TextField(
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
              ),
              Text(
                CT.featured,
                style: TU.cardName.copyWith(color: const Color(0xff7B838A), fontWeight: FontWeight.bold),
              ).paddingOnly(right: 286,top: 15),
              SizedBox(
                height: 245,
                child: ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CommonDealCard(
                      onTap: () {
                        Get.to(const DealDetails());
                      },
                    );
                  },
                ),
              ).paddingOnly(top: 15),
              Text(
                CT.categories,
                style: TU.cardName.copyWith(color: const Color(0xff7B838A), fontWeight: FontWeight.bold),
              ).paddingOnly(right: 271,top: 24),
              SizedBox(
                height: 35,
                child: ListView.builder(
                  itemCount: 1,
                  //itemCount: TopTradingList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ListBTN();
                  },
                ),
              ).paddingOnly(top: 15,bottom: 15),
              CommonDealCard(
                onTap: () {},
              ),
              CommonDealCard(
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

}

ListBTN(){
  return Row(
    children: [
      ListBTN1(
          onPressed: () {},
          txt: CT.all
      ),
      const SizedBox(width: 5,),
      ListBTN2(
          onPressed: () {},
          txt: CT.trendBeauty
      ),
      const SizedBox(width: 5,),
      ListBTN2(
          onPressed: () {},
          txt: CT.trendFashion
      ),
      const SizedBox(width: 5,),
      ListBTN2(
          onPressed: () {},
          txt: CT.trendTech
      ),
      const SizedBox(width: 5,),
      ListBTN2(
          onPressed: () {},
          txt: CT.trendFashion
      ),
    ],
  );
}