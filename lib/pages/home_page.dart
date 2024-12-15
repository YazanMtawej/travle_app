import 'package:flutter/material.dart';
import 'package:travle_app/constants.dart';
import 'package:travle_app/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Home",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,size: 40,
                  color: Colors.black,
                ))
          ],
        ),
        body: const HomePageBody(),
      ),
    );
  }
}
