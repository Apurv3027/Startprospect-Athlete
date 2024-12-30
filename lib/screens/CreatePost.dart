import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/CreatePostDetails.dart';
import 'package:starprospect/screens/HomePage.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/CommonTextField.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  TextEditingController linkController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: CT.addNewPost,
        centerTitle: true,
        action: [
          TextButton(
            onPressed: () {
              // Navigator.of(context).pop();
              // Navigator.of(context).pushAndRemoveUntil(
              //     MaterialPageRoute(
              //       builder: (context) => const HomePage(),
              //     ),
              //         (route) => false);
              //Get.offAll(const HomePage());
              Get.back();
              Get.back();
            },
            child: Text(
              CT.post,
              style: TU.appBarActionTxt.copyWith(fontWeight: FontWeight.w400),
            ),
          ),
          // IconButton(
          //   onPressed: (){
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => const CreatePost(),),
          //     );
          //   },
          //   icon: const Icon(Icons.add_box_outlined),
          // ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              CT.postType,
              style: TU.smTxt2,
            ).paddingOnly(top: 15, right: 260),
            // Center(
            //   child: ImageIcon(AssetImage('assets/image/Group Grid11.png'),size: 170,),
            // ),
            Container(
              height: 260,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                border: Border.all(
                    style: BorderStyle.solid,
                    color: Colors.grey.withOpacity(0.4)),
              ),
              child: Center(
                child: GestureDetector(
                  child: Image.asset(
                    'assets/image/Group Grid10.png',
                    height: 138,
                  ),
                  onTap: () {
                    Get.to(const CreatePostDetails());
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => const CreatePostDetails(),),
                    // );
                  },
                ),
              ),
            ).paddingOnly(top: 10),
            CTF
                .commonTextField(
                  suggestionTxt: CT.enterURL,
                  name: CT.link,
                  controller: linkController,
                  action: TextInputAction.next,
                )
                .paddingOnly(top: 15),
            CTF
                .commonTextField(
                    suggestionTxt: CT.desAboutPost,
                    name: CT.description,
                    controller: descriptionController,
                    action: TextInputAction.next,
                    maxLines: 5)
                .paddingOnly(top: 15),
          ],
        ).paddingAll(15),
      ),
    );
  }
}
