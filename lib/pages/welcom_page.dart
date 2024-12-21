import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travle_app/constants.dart';
import 'package:travle_app/pages/login_page.dart';
import 'package:travle_app/pages/sign_page.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 40),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'WELCOME TO YOU IN TRUVEL APP',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'myfont',
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  SvgPicture.asset('assets/icons/chat.svg'),
                  const SizedBox(
                    height: 33,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: const Login(),
                              type: PageTransitionType.leftToRight,
                              duration: Durations.long2));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(Colors.orangeAccent),
                      padding: WidgetStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 99, vertical: 20)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66))),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: const Sign(),
                              type: PageTransitionType.leftToRight,
                              duration: Durations.long2));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(Colors.orangeAccent),
                      padding: WidgetStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 99, vertical: 20)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66))),
                    ),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 111,
              child: Image.asset('assets/images/main_top.png'),
            ),
            Positioned(
              bottom: 0,
              width: 111,
              child: Image.asset('assets/images/main_bottom.png'),
            ),
          ],
        ),
      ),
    );
  }
}
