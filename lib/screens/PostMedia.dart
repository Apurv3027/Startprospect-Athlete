import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/utility/CommonAppBar.dart';

class PostMedia extends StatefulWidget {
  const PostMedia({Key? key}) : super(key: key);

  @override
  _PostMediaState createState() => _PostMediaState();
}

class _PostMediaState extends State<PostMedia>{

  TextEditingController linkController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: 'Preview',
        centerTitle: true,
        automaticallyImplyLeading: false,
        action: [
          IconButton(
              onPressed: (){
                Get.back();
                //Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ClipRRect(
                //borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                child: Image.asset('assets/image/image 22.png',height: 260,),
              ).paddingOnly(top: 200),
            ],
          ),
        ),
      ),
    );
  }

}