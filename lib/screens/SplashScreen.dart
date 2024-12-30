import 'package:flutter/material.dart';

import '../utility/Colors.dart';
import 'LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenstate();
}

class _SplashScreenstate extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
              //color: Color(0xff6A58FB),
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: CU.background,
          )),
          child: Padding(
            //padding: EdgeInsets.fromLTRB(68, 98, right, bottom)
            padding: const EdgeInsets.only(left: 47, top: 25, right: 46.13),
            child: SizedBox(
              width: 240,
              height: 83.06,
              child: CircleAvatar(
                //radius: 40,
                backgroundColor: const Color(0x004599f4),
                child: Image.asset('assets/image/logo.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
