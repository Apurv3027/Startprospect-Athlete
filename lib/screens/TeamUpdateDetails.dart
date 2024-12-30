import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/CommonCard.dart';

class TeamUpdate extends StatefulWidget {
  const TeamUpdate({Key? key}) : super(key: key);

  @override
  State<TeamUpdate> createState() => _TeamUpdateState();
}

class _TeamUpdateState extends State<TeamUpdate>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return CommonTeamUpdateCard(
                  onTap: () {},
                );
              },
            ).paddingOnly(top: 15),
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/image/logo1.png'),
                ).paddingOnly(bottom: 25,left: 15),
                Container(
                  height: 55,
                  width: 310,
                  alignment: Alignment.center,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      labelText: 'Type something....',
                      prefixIcon: Icon(Icons.link_rounded),
                    ),
                  ),
                ).paddingOnly(left: 10, bottom: 30, top: 10),
              ],
            ).paddingOnly(top: 90),
          ],
        ),
      ),
    );
  }

}