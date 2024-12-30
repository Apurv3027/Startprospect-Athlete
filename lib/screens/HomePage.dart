import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/AccountSettings.dart';
import 'package:starprospect/screens/CreatePost.dart';
import 'package:starprospect/screens/EditProfile.dart';
import 'package:starprospect/screens/HelpAndReport.dart';
import 'package:starprospect/screens/MyProfile.dart';
import 'package:starprospect/screens/Notifications.dart';
import 'package:starprospect/screens/SavedScreen.dart';
import 'package:starprospect/screens/TabController.dart';
import 'package:starprospect/screens/Wallet.dart';
import 'package:starprospect/utility/CommonBottomBar.dart';
import 'package:starprospect/utility/TextStyle.dart';
//import 'package:kf_drawer/kf_drawer.dart';

import '../utility/Colors.dart';
import '../utility/CommonAppBar.dart';
import '../utility/Text.dart';

class Zoom extends StatefulWidget {
  const Zoom({Key? key}) : super(key: key);

  @override
  _ZoomState createState() => _ZoomState();
}

ZoomDrawerController? z;

class _ZoomState extends State<Zoom> {

  @override
  void initState() {
    z = ZoomDrawerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: z,
      borderRadius: 24,
      style: DrawerStyle.defaultStyle,
      showShadow: true,
      menuScreenWidth: 300,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
      slideWidth: MediaQuery.of(context).size.width * 0.88,
      duration: const Duration(milliseconds: 500),
      angle: 0.0,
      menuBackgroundColor: const Color(0xff4599F4),
      mainScreen: const HomePage(),
      menuScreen: const MenuPage(),
    );
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: CU.background,
            ),
        ),
        child: Column(
          children: [
            // DrawerHeader(
            //   child: Row(
            //     children: [
            //       const CircleAvatar(
            //         backgroundImage: AssetImage('assets/image/DrawerLogo.png'),
            //         //radius: 30,
            //       ),
            //       Column(
            //         children: [
            //           const Text(
            //             'John Deo',
            //             style: TU.drawerHeaderTXT,
            //           ).paddingOnly(right: 7),
            //           Text(
            //             'Student Athlete',
            //             style: TU.drawerHeaderTXT.copyWith(fontWeight: FontWeight.w500,fontSize: 12),
            //           ),
            //         ],
            //       ).paddingOnly(top: 50,left: 12),
            //     ],
            //   ),
            // ).paddingOnly(top: 30),
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/image/DrawerLogo.png'),
                  //radius: 30,
                ),
                Column(
                  children: [
                    const Text(
                      CT.user,
                      style: TU.drawerHeaderTXT,
                    ).paddingOnly(right: 7),
                    Text(
                      CT.positionHeading,
                      style: TU.drawerHeaderTXT.copyWith(fontWeight: FontWeight.w500,fontSize: 12),
                    ),
                  ],
                ).paddingOnly(left: 12),
              ],
            ).paddingOnly(top: 80,left: 15),
            ListTile(
              leading: Image.asset('assets/image/user.png',height: 24),
              title: const Text(
                CT.myProfile,
                style: TU.drawerTXT,
              ),
              onTap: () {
                Get.to(const Zoom());
              },
            ).paddingOnly(top: 21),
            ListTile(
              leading: Image.asset('assets/image/Office.png',height: 24),
              title: const Text(
                CT.athletes,
                style: TU.drawerTXT,
              ),
              onTap: () {
                Get.to(const Zoom());
              },
            ).paddingOnly(top: 12),
            ListTile(
              leading: Image.asset('assets/image/Tag.png',height: 24),
              title: const Text(
                CT.deals,
                style: TU.drawerTXT,
              ),
              onTap: () {
                Get.to(const Zoom());
              },
            ).paddingOnly(top: 12),
            ListTile(
              leading: Image.asset('assets/image/Heart.png',height: 24),
              title: const Text(
                CT.fav,
                style: TU.drawerTXT,
              ),
              onTap: () {
                Get.to(const Zoom());
              },
            ).paddingOnly(top: 12),
            ListTile(
              leading: Image.asset('assets/image/Bookmark.png',height: 24),
              title: const Text(
                CT.saved,
                style: TU.drawerTXT,
              ),
              onTap: () {
                Get.to(const SavedScreen());
              },
            ).paddingOnly(top: 12),
            ListTile(
              leading: Image.asset('assets/image/Newspaper.png',height: 24),
              title: const Text(
                CT.HelpNDSupport,
                style: TU.drawerTXT,
              ),
              onTap: () {
                Get.to(const HelpAndReport());
              },
            ).paddingOnly(top: 12),
            ListTile(
              leading: Image.asset('assets/image/Clipboard check.png',height: 24),
              title: const Text(
                CT.privacy,
                style: TU.drawerTXT,
              ),
              onTap: () {
                Get.to(const Zoom());
              },
            ).paddingOnly(top: 12),
            ListTile(
              leading: Image.asset('assets/image/exit.png',height: 24),
              title: const Text(
                CT.logout,
                style: TU.drawerTXT,
              ),
              onTap: () {
                Get.to(const Zoom());
              },
            ).paddingOnly(top: 12),
          ],
        ).paddingAll(30),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  int _currentIndex = 0;
  String _page_title = CT.bnbhome;
  IconButton _iconButton = IconButton(
      onPressed: (){},
      icon: const Icon(Icons.add),
  );
  IconButton _iconButton2 = IconButton(
      onPressed: (){},
      icon: const Icon(Icons.add),
  );
  PopupMenuButton _popupMenuButton = PopupMenuButton(
    shape: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      gapPadding: 10,
      borderSide: BorderSide(color: Color(0xffffffff)),
    ),
    position: PopupMenuPosition.under,
    itemBuilder: (BuildContext context) => <PopupMenuEntry>[
      PopupMenuItem(
        child: TextButton(
          onPressed: () {
            Get.back();
            Get.to(const EditProfile());
          },
          child: Text(
            CT.edit,
            style: TU.appBarActionTxt.copyWith(color: Colors.black),
          ).paddingOnly(right: 50),
        ),
      ),
      PopupMenuItem(
        child: TextButton(
          onPressed: () {
            Get.back();
            Get.to(const AccountSettings());
          },
          child: Text(
            CT.setting,
            style: TU.appBarActionTxt.copyWith(color: Colors.black),
          ),
        ),
      ),
    ],
    onSelected: (value) {},
    // onSelected: (value) {
    //   if(value == 1){
    //     const LoginScreen();
    //   } else if(value == 2){
    //     const LoginScreen();
    //   }
    // },
  );

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (index == 0) {
        _page_title = CT.bnbhome;
        _iconButton = IconButton(
          onPressed: (){
            Get.to(const MessageTabControl());
          },
          icon: const Icon(Icons.chat_bubble_outline),
        );
        _iconButton2 = IconButton(
          onPressed: (){
            Get.to(const Notifications());
          },
          icon: const Icon(Icons.notifications_none_rounded),
        );
      } else if (index == 1) {
        _page_title = CT.bnboffers;
        _iconButton = IconButton(
          onPressed: (){
            Get.to(const MessageTabControl());
          },
          icon: const Icon(Icons.chat_bubble_outline),
        );
        _iconButton2 = IconButton(
          onPressed: (){
            Get.to(const Notifications());
          },
          icon: const Icon(Icons.notifications_none_rounded),
        );
      } else if (index == 2) {
        _page_title = CT.victor;
        _iconButton = IconButton(
          onPressed: (){},
          icon: const Icon(Icons.person_remove_outlined),
        );
        _iconButton2 = IconButton(
          onPressed: (){
            Get.to(const Notifications());
          },
          icon: const Icon(Icons.notifications_none_rounded),
        );
      } else if (index == 3) {
        _page_title = CT.bnbwallet;
        _iconButton = IconButton(
          onPressed: (){
            Get.to(const MessageTabControl());
          },
          icon: const Icon(Icons.chat_bubble_outline),
        );
        _iconButton2 = IconButton(
          onPressed: (){
            Get.to(const Notifications());
          },
          icon: const Icon(Icons.notifications_none_rounded),
        );
      } else if (index == 4) {
        _page_title = CT.user;
        _iconButton = IconButton(
          onPressed: (){
            Get.to(const CreatePost());
          },
          icon: const Icon(Icons.add_box_outlined),
        );
        // _iconButton2 = IconButton(
        //   onPressed: (){},
        //   icon: const Icon(Icons.more_vert),
        // );
        _popupMenuButton =  PopupMenuButton(
          shape: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            gapPadding: 10,
            borderSide: BorderSide(color: Color(0xffffffff)),
          ),
          position: PopupMenuPosition.under,
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            PopupMenuItem(
              child: TextButton(
                onPressed: () {
                  Get.back();
                  Get.to(const EditProfile());
                },
                child: Text(
                  CT.edit,
                  style: TU.appBarActionTxt.copyWith(color: Colors.black),
                ).paddingOnly(right: 50),
              ),
            ),
            PopupMenuItem(
              child: TextButton(
                onPressed: () {
                  Get.back();
                  Get.to(const AccountSettings());
                },
                child: Text(
                  CT.setting,
                  style: TU.appBarActionTxt.copyWith(color: Colors.black),
                ),
              ),
            ),
          ],
          onSelected: (value) {},
          // onSelected: (value) {
          //   if(value == 1){
          //     const LoginScreen();
          //   } else if(value == 2){
          //     const LoginScreen();
          //   }
          // },
        );
      }
    });
  }

  final tabs = [
    const HomeTabControl(), //0
    const OffersTabControl(), //1
    const CollegesTabControl(), //2
    const Wallet(), //3
    const MyProfile(), //4
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: CommonAppBar(
          titleEx: _page_title,
          centerTitle: true,
          leadingIcon: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              print(z);
              z?.toggle?.call();
              //ZoomDrawer.of(context)?.toggle();
            },
          ),
          action: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: IconButton(
                onPressed: () {},
                icon: _iconButton,
              ),
            ),
            _currentIndex == 4 ? _popupMenuButton
            : IconButton(
              onPressed: () {},
              icon: _iconButton2,
            ),
          ],
        ),
        body: tabs[_currentIndex],
        bottomNavigationBar: CommonBottomBar(
          backgroundColor: CU.surface,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: CU.onSurface,
          unselectedItemColor: CU.bnbIconColor,
          // onTap: (value) {
          //   setState(() {
          //     _currentIndex = value;
          //   });
          // },
          onTap: _onItemTapped,
          // onTap: (int index) {
          //   switch (index) {
          //     case 0:
          //       const HomeLatest();
          //       break;
          //     case 1:
          //       const OffersPage();
          //       break;
          //     case 2:
          //       const HomeLatest();
          //       break;
          //     case 3:
          //       const HomeLatest();
          //       break;
          //     case 4:
          //       const HomeLatest();
          //       break;
          //   }
          //   setState(
          //         () {
          //       _currentIndex = index;
          //     },
          //   );
          // },
          currentIndex: _currentIndex,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: CT.bnbhome,
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/image/Clipboardlist.png'),
              ),
              label: CT.bnboffers,
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/image/college.png'),
              ),
              label: CT.bnbcolleges,
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet_outlined,
              ),
              label: CT.bnbwallet,
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
              ),
              label: CT.bnbprofile,
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget{

  final zoomDrawerController;

  const HomeScreen({this.zoomDrawerController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff464dfe),
      appBar: AppBar(
        leading: InkWell(
          onTap: () => zoomDrawerController.toggle(),
          child: const Icon(Icons.menu),
        ),
      ),
      body: SafeArea(
          child: Column(
            children: const [

            ],
          ),
      ),
    );
  }

}