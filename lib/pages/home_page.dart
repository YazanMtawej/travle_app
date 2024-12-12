import 'package:flutter/material.dart';
import 'package:travle_app/widgets/custom_icon.dart';
import 'package:travle_app/widgets/custom_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
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
                  height: 280, width: 387, child: Image.asset('assets/1.jpg')),
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
                    CustomIcon(
                        size: 40, icon: Icons.alarm, onPressed: () {}),
                    const SizedBox(
                      width: 45,
                    ),
                    CustomIcon(
                        size: 40, icon: Icons.message, onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
