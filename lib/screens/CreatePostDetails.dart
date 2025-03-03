import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/PostMedia.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/CommonTextField.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class CreatePostDetails extends StatefulWidget {
  const CreatePostDetails({Key? key}) : super(key: key);

  @override
  _CreatePostDetailsState createState() => _CreatePostDetailsState();
}

class _CreatePostDetailsState extends State<CreatePostDetails>{

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
              Get.back();
            },
            child: Text(
              CT.post,
              style: TU.appBarActionTxt.copyWith(fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              CT.postType,
              style: TU.smTxt2,
            ).paddingOnly(top: 15,right: 260),
            // Center(
            //   child: ImageIcon(AssetImage('assets/image/Group Grid11.png'),size: 170,),
            // ),
            // Container(
            //   height: 260,
            //   decoration: BoxDecoration(
            //     borderRadius: const BorderRadius.all(Radius.circular(12)),
            //     border: Border.all(style: BorderStyle.solid,color: Colors.grey.withOpacity(0.4),strokeAlign: StrokeAlign.inside),
            //   ),
            //   child: Center(
            //     child: GestureDetector(
            //       child: Image.asset('assets/image/Group Grid10.png',height: 138,),
            //       onTap: (){},
            //     ),
            //   ),
            // ).paddingOnly(top: 10),
            Stack(
              children: [
                ClipRRect(
                  //borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                  child: Image.asset('assets/image/image 22.png',height: 260,),
                ),
                Positioned(
                  top: 17,
                  left: 310,
                  child: IconButton(
                      onPressed: (){
                        Get.to(const PostMedia());
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (context) => const PostMedia(),),
                        // );
                      },
                      icon: const Icon(Icons.perm_media_outlined,color: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
              height: 45,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0))
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffF5F6F7).withOpacity(0.8),
                  // primary: const Color(0xff6A58FB),
                  // onPrimary: const Color(0xff4599F4),
                ),
                onPressed: () {},
                child: Center(
                  child: Text(
                    CT.addMedia,
                    style: TU.txtButton.copyWith(color: Colors.black),
                  ),
                ).paddingAll(10),
              ),
            ).paddingOnly(top: 21),
            CTF.commonTextField(
              suggestionTxt: CT.linkEX,
              name: CT.link,
              controller: linkController,
              action: TextInputAction.next,
            ).paddingOnly(top: 15),
            CTF.commonTextField(
                suggestionTxt: CT.descriptionEX,
                name: CT.description,
                controller: descriptionController,
                action: TextInputAction.next,
                maxLines: 4
            ).paddingOnly(top: 15),
          ],
        ).paddingAll(15),
      ),
    );
  }

}