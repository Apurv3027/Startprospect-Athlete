import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/Colors.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/TextStyle.dart';

class NewsDetails extends StatefulWidget {
  const NewsDetails({Key? key}) : super(key: key);

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: 'Home - Starprospect.com',
        style: TU.appBarActionTxt.copyWith(fontSize: 14),
        centerTitle: true,
        leadingIcon: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: const Icon(Icons.close).paddingOnly(top: 5)
        ),
        action: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[],
          ).paddingOnly(top: 6, right: 10),
        ],
        bottom: PreferredSize(
          preferredSize: Size.zero,
          child: Text(
            'www.starprospect.com',
            style: TU.appBarActionTxt.copyWith(fontSize: 11),
          ).paddingOnly(bottom: 10),
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
              ),
            ),
            child: Column(
              children: <Widget>[
                // Row(
                //   children: [
                //     IconButton(
                //       onPressed: (){
                //         Get.back();
                //       },
                //       icon: const Icon(Icons.close,color: Colors.white,size: 24),
                //     ).paddingOnly(top: 42,bottom: 10,right: 58),
                //     Column(
                //       children: [
                //         Text(
                //             'Home - Starprospect.com',
                //             style: TU.appBarActionTxt.copyWith(fontSize: 14)
                //         ).paddingOnly(top: 50),
                //         Text(
                //           'www.starprospect.com',
                //           style: TU.appBarActionTxt.copyWith(fontSize: 11),
                //         ).paddingOnly(bottom: 10),
                //       ],
                //     ),
                //     PopupMenuButton(
                //       color: Colors.white,
                //       itemBuilder: (BuildContext context) => <PopupMenuEntry>[],
                //     ).paddingOnly(top: 40, right: 15,left: 45),
                //   ],
                // ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                        child: Image.asset(
                          'assets/image/image 25.png',
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('assets/image/PostLogo.png'),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'AP Top 26',
                                            style: TextStyle(fontWeight: FontWeight.w900),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.symmetric(horizontal: 7),
                                            padding: const EdgeInsets.all(2),
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.blue,
                                            ),
                                            child: const Icon(Icons.check, color: Colors.white, size: 10),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Text('@aP_Top26'),
                                          Container(
                                            margin: const EdgeInsets.symmetric(horizontal: 7),
                                            width: 5.0,
                                            height: 5.0,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle, color: Colors.black),
                                          ),
                                          const Text('15h'),
                                        ],
                                      ),
                                    ],
                                  ).paddingOnly(left: 10),
                                ),
                              ],
                            ).paddingOnly(left: 15, top: 15),
                            Row(children: const [
                              Text("By"),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '@JohnDoeAP',
                                style: TextStyle(color: Colors.blue),
                              )
                            ]).paddingOnly(left: 15, top: 10),
                            const Text(
                              'apnews.com',
                              style: TextStyle(color: Colors.blue),
                            ).paddingOnly(left: 15, top: 15),
                            const Text(
                              'March Madness | 2022 NCAA Tournament | AP News',
                              style: TextStyle(fontSize: 12),
                            ).paddingOnly(left: 15, top: 10),
                            const Text(
                              'Get the latest NCAA basketball tournament news, game schedules, predictions, and scores throughout March Madness with AP News.',
                              style: TextStyle(fontSize: 12),
                            ).paddingOnly(left: 15, top: 10),
                            const Text(
                              'The White House remained ambiguous on how many Americans are in Ukraine as a Russian invasion loomss.',
                              style: TextStyle(fontSize: 12),
                            ).paddingOnly(left: 15, top: 10),
                            const Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                              style: TextStyle(fontSize: 12),
                            ).paddingOnly(left: 15, top: 10),
                            const Text(
                              'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure',
                              style: TextStyle(fontSize: 12),
                            ).paddingOnly(left: 15, top: 10),
                            Row(
                              children: [
                                const Icon(Icons.favorite, color: Colors.red).paddingOnly(right: 5),
                                const Text(
                                  '15',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ).paddingOnly(left: 10, right: 10, top: 10),
                            Row(
                              children: const [Text("View all 10 comments")],
                            ).paddingOnly(left: 10, top: 15),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 38,
                                    alignment: Alignment.center,
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Type something....',
                                      ),
                                    ),
                                  ).paddingOnly(left: 10, bottom: 30, top: 10),
                                ),
                                SizedBox(
                                  width: 26,
                                  height: 26,
                                  child: Image.asset('assets/image/send.png'),
                                ).paddingOnly(bottom: 15, left: 7, right: 7),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}