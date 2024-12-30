import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/CommentsScreen.dart';
import 'package:starprospect/screens/LikeScreen.dart';
import 'package:starprospect/screens/NewsDetails.dart';
import 'package:starprospect/screens/RePost.dart';
import 'package:starprospect/utility/CommonBottomSheet.dart';
import 'package:starprospect/utility/CommonCard.dart';
import 'package:starprospect/utility/Text.dart';
import 'package:starprospect/utility/TextStyle.dart';

class HomeLatest extends StatefulWidget {
  const HomeLatest({Key? key}) : super(key: key);

  @override
  State<HomeLatest> createState() => _HomeLatestState();
}

class _HomeLatestState extends State<HomeLatest> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.1),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.vertical,
                //scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CommonPost(
                    profileLogo: const AssetImage('assets/image/PostLogo.png'),
                    profileName: CT.postProfileName1,
                    txtPosition: CT.postPosition1,
                    dis1: CT.postDes1,
                    postImage: Image.asset('assets/image/image 25.png'),
                    check: const Icon(Icons.check, color: Colors.white, size: 10),
                    checkColor: Colors.blue,
                    onTapCard: () {
                      Get.to(const NewsDetails());
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const NewsDetails(),
                      //   ),
                      // );
                    },
                    onTapLike: () {
                      Get.to(const LikeScreen());
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => const LikeScreen(),));
                    },
                    onTapComments: () {
                      Get.to(const CommentsScreen());
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => const CommentsScreen(),));
                    },
                      onTapShare: () {
                        CommonShowModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (BuildContext) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.blue, width: 3),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                              child: Column(
                                children: [
                                  Center(
                                    child: Image.asset(
                                      'assets/image/Rectangle 5201.png',
                                    ).paddingOnly(top: 15,left: 165,right: 166),
                                  ),
                                  Center(
                                    child: Text(
                                      CT.shareWith,
                                      style: TU.bsBTN.copyWith(fontSize: 15),
                                    ).paddingOnly(top: 25,left: 145,right: 146),
                                  ),
                                  Row(
                                    children: [
                                      CommonSocialMedia(
                                        height: 42,
                                        socialMedia: const AssetImage('assets/image/Facebook (1).png'),
                                        txt: CT.facebook,
                                        topImage: 27,
                                        leftImage: 18,
                                        topText: 13,
                                        leftText: 20,
                                      ),
                                      CommonSocialMedia(
                                        height: 40,
                                        socialMedia: const AssetImage('assets/image/Twitter 2.png'),
                                        txt: CT.twitter,
                                        topImage: 28,
                                        leftImage: 40,
                                        topText: 14,
                                        leftText: 40,
                                      ),
                                      CommonSocialMedia(
                                        height: 42,
                                        socialMedia: const AssetImage('assets/image/linkedin.png'),
                                        txt: CT.linkedin,
                                        topImage: 27,
                                        leftImage: 40,
                                        topText: 13,
                                        leftText: 46,
                                      ),
                                      CommonSocialMedia(
                                        height: 42,
                                        socialMedia: const AssetImage('assets/image/Instagram.png'),
                                        txt: CT.instagram,
                                        topImage: 27,
                                        leftImage: 38,
                                        topText: 13,
                                        leftText: 33,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CommonSocialMedia(
                                        height: 42,
                                        socialMedia: const AssetImage('assets/image/telegram.png'),
                                        txt: CT.telegram,
                                        topImage: 27,
                                        leftImage: 18,
                                        topText: 13,
                                        leftText: 20,
                                      ),
                                      CommonSocialMedia(
                                        height: 40,
                                        socialMedia: const AssetImage('assets/image/whatsapp.png'),
                                        txt: CT.whatsapp,
                                        topImage: 28,
                                        leftImage: 39,
                                        topText: 14,
                                        leftText: 32,
                                      ),
                                      // CommonSocialMedia(
                                      //   height: 42,
                                      //   socialMedia: const AssetImage('assets/image/google_drive.png'),
                                      //   txt: 'Drive',
                                      //   topImage: 27,
                                      //   leftImage: 44,
                                      //   topText: 13,
                                      //   leftText: 50,
                                      // ),
                                      // CommonSocialMedia(
                                      //   height: 42,
                                      //   socialMedia: const AssetImage('assets/image/gmail.png'),
                                      //   txt: 'Gmail',
                                      //   topImage: 27,
                                      //   leftImage: 53,
                                      //   topText: 13,
                                      //   leftText: 51,
                                      // ),
                                      CommonSocialMedia(
                                        height: 42,
                                        socialMedia: const AssetImage('assets/image/linkedin.png'),
                                        txt: CT.linkedin,
                                        topImage: 27,
                                        leftImage: 30,
                                        topText: 13,
                                        leftText: 36,
                                      ),
                                      CommonSocialMedia(
                                        height: 42,
                                        socialMedia: const AssetImage('assets/image/Instagram.png'),
                                        txt: CT.instagram,
                                        topImage: 27,
                                        leftImage: 38,
                                        topText: 13,
                                        leftText: 33,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    onTapRePost: () {
                      Get.to(const Repost());
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => const Repost(),));
                    },
                  );
                  // return CommonPost(
                  //   profileLogo: const AssetImage('assets/image/logo1.png'),
                  //   profileName: 'AP Top 26',
                  //   txtPosition: 'Coach',
                  //   dis1: 'March Madness | 2022 NCAA Tournament Gratfull to god after winning this tournament',
                  //   postImage: Image.asset('assets/image/image 22.png'),
                  // );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    CT.tAthletes,
                    style: TU.homeTitle,
                  ),
                ],
              ).paddingOnly(top: 15, left: 15),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  //scrollDirection: Axis.vertical,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CommonProfileCard(
                      profileLogo: const AssetImage('assets/image/logo2.png'),
                      profileName: CT.user,
                      txtPosition: CT.chipFoot,
                      onPressed: () {},
                    );
                  },
                ),
              ).paddingOnly(top: 15, left: 15, right: 15),
              ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.vertical,
                //scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CommonPost(
                    profileLogo: const AssetImage('assets/image/PostLogo.png'),
                    profileName: CT.postProfileName1,
                    txtPosition: CT.postPosition1,
                    dis1: CT.postDes1,
                    postImage: Image.asset('assets/image/image 25.png'),
                    check: const Icon(Icons.check, color: Colors.white, size: 10),
                    checkColor: Colors.blue,
                    onTapCard: () {
                      Get.to(const NewsDetails());
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const NewsDetails(),
                      //   ),
                      // );
                    },
                    onTapLike: () {
                      Get.to(const LikeScreen());
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => const LikeScreen(),));
                    },
                    onTapComments: () {
                      Get.to(const CommentsScreen());
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => const CommentsScreen(),));
                    },
                    onTapShare: () {
                      CommonShowModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (BuildContext) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.4,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.blue, width: 3),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                            child: Column(
                              children: [
                                Center(
                                  child: Image.asset(
                                    'assets/image/Rectangle 5201.png',
                                  ).paddingOnly(top: 15,left: 165,right: 166),
                                ),
                                Center(
                                  child: Text(
                                    CT.shareWith,
                                    style: TU.bsBTN.copyWith(fontSize: 15),
                                  ).paddingOnly(top: 25,left: 145,right: 146),
                                ),
                                Row(
                                  children: [
                                    CommonSocialMedia(
                                      height: 42,
                                      socialMedia: const AssetImage('assets/image/Facebook (1).png'),
                                      txt: CT.facebook,
                                      topImage: 27,
                                      leftImage: 18,
                                      topText: 13,
                                      leftText: 20,
                                    ),
                                    CommonSocialMedia(
                                      height: 40,
                                      socialMedia: const AssetImage('assets/image/Twitter 2.png'),
                                      txt: CT.twitter,
                                      topImage: 28,
                                      leftImage: 40,
                                      topText: 14,
                                      leftText: 40,
                                    ),
                                    CommonSocialMedia(
                                      height: 42,
                                      socialMedia: const AssetImage('assets/image/linkedin.png'),
                                      txt: CT.linkedin,
                                      topImage: 27,
                                      leftImage: 40,
                                      topText: 13,
                                      leftText: 46,
                                    ),
                                    CommonSocialMedia(
                                      height: 42,
                                      socialMedia: const AssetImage('assets/image/Instagram.png'),
                                      txt: CT.instagram,
                                      topImage: 27,
                                      leftImage: 38,
                                      topText: 13,
                                      leftText: 33,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CommonSocialMedia(
                                      height: 42,
                                      socialMedia: const AssetImage('assets/image/telegram.png'),
                                      txt: CT.telegram,
                                      topImage: 27,
                                      leftImage: 18,
                                      topText: 13,
                                      leftText: 20,
                                    ),
                                    CommonSocialMedia(
                                      height: 40,
                                      socialMedia: const AssetImage('assets/image/whatsapp.png'),
                                      txt: CT.whatsapp,
                                      topImage: 28,
                                      leftImage: 39,
                                      topText: 14,
                                      leftText: 32,
                                    ),
                                    // CommonSocialMedia(
                                    //   height: 42,
                                    //   socialMedia: const AssetImage('assets/image/google_drive.png'),
                                    //   txt: 'Drive',
                                    //   topImage: 27,
                                    //   leftImage: 44,
                                    //   topText: 13,
                                    //   leftText: 50,
                                    // ),
                                    // CommonSocialMedia(
                                    //   height: 42,
                                    //   socialMedia: const AssetImage('assets/image/gmail.png'),
                                    //   txt: 'Gmail',
                                    //   topImage: 27,
                                    //   leftImage: 53,
                                    //   topText: 13,
                                    //   leftText: 51,
                                    // ),
                                    CommonSocialMedia(
                                      height: 42,
                                      socialMedia: const AssetImage('assets/image/linkedin.png'),
                                      txt: CT.linkedin,
                                      topImage: 27,
                                      leftImage: 30,
                                      topText: 13,
                                      leftText: 36,
                                    ),
                                    CommonSocialMedia(
                                      height: 42,
                                      socialMedia: const AssetImage('assets/image/Instagram.png'),
                                      txt: CT.instagram,
                                      topImage: 27,
                                      leftImage: 38,
                                      topText: 13,
                                      leftText: 33,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    onTapRePost: () {
                      Get.to(const Repost());
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => const Repost(),));
                    },
                  );
                  // return CommonPost(
                  //   profileLogo: const AssetImage('assets/image/logo1.png'),
                  //   profileName: 'AP Top 26',
                  //   txtPosition: 'Coach',
                  //   dis1: 'March Madness | 2022 NCAA Tournament Gratfull to god after winning this tournament',
                  //   postImage: Image.asset('assets/image/image 22.png'),
                  // );
                },
              ).paddingOnly(top: 22),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}