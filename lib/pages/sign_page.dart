import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travle_app/constants.dart';
import 'package:travle_app/pages/home_page.dart';
import 'package:travle_app/pages/login_page.dart';

class Sign extends StatelessWidget {
  const Sign({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      'Sign up',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontFamily: 'myfont',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SvgPicture.asset(
                      'assets/icons/signup.svg',
                      height: 200,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(66)),
                      child: const TextField(
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: 'Email : ',
                          labelStyle: TextStyle(fontSize: 19),
                          border: InputBorder.none,
                          icon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 27),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(66)),
                      child: const TextField(
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                            hintText: 'Pass Word : ',
                            labelText: 'Password',
                            labelStyle: TextStyle(fontSize: 19),
                            border: InputBorder.none,
                            icon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility)),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: const HomePage(),
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
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(" Already have an account ?"),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: const Login(),
                                    type: PageTransitionType.rightToLeft,
                                    duration: Durations.long2));
                          },
                          child: const Text(" Log in",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      width: 299,
                      child: Row(
                        children: [
                          // ignore: prefer_const_constructors
                          Expanded(
                              child: Divider(
                            height: 9,
                            thickness: 5,
                            color: Colors.orange,
                          )),
                          Text(
                            'OR',
                            style: TextStyle(color: Colors.orangeAccent),
                          ),
                          Expanded(
                              child: Divider(
                            height: 9,
                            thickness: 5,
                            color: Colors.orange,
                          )),
                        ],
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
                right: 0,
                width: 111,
                child: Image.asset('assets/images/login_bottom.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
