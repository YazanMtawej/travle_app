import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travle_app/pages/travel_page.dart';
import 'package:travle_app/widgets/custom_card.dart';
import 'package:travle_app/widgets/custom_button.dart';
import 'package:travle_app/widgets/custom_icon.dart';
import 'package:travle_app/widgets/custom_text_field.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            Center(
              child: Container(
                width: 300,
                height: 50,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 40,
                      color: Colors.white,
                      spreadRadius: 0,
                      offset: Offset(10, 10)),
                ]),
                child: Center(
                    child: CustomTextField(
                  hinttext: 'Search',
                )),
              ),
            ),
            CustomIcon(icon: Icons.search, onPressed: () {}, size: 30),
          ],
        ),
        Stack(
          children: [
            SizedBox(
                height: 280, width: 387, child: Image.asset('assets/4.jpg')),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 70),
              child: Row(
                children: [
                  CustomIcon(
                    size: 40,
                    icon: Icons.home,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  CustomIcon(size: 40, icon: Icons.alarm, onPressed: () {}),
                  const SizedBox(
                    width: 45,
                  ),
                  CustomIcon(size: 40, icon: Icons.message, onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            CustomButton(
              text: 'BACK',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              width: 10,
            ),
            CustomButton(
              text: 'NEXT',
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const TravelPage(),
                        type: PageTransitionType.leftToRight,
                        duration: Durations.long2));
              },
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          height: 40,
          color: const Color.fromARGB(255, 1, 52, 94),
          child: const Text(
            'Type Plane :',
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 240,
          child: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 5),
            child: GridView.builder(
                itemCount: 10,
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.3,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 50,
                ),
                itemBuilder: (context, index) {
                  return const CustomCard();
                }),
          ),
        ),
      ],
    );
  }
}
