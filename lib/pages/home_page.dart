import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Home",style: TextStyle(fontSize: 30,color: Colors.white),
        ),
         actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
        ),
      body: Column(
        children: [
          Container(width:double.infinity,
          height: 50,
          color: Colors.cyan,
          
          child: Center(child: const TextField()),),
        ],
      ),
    );
  }
}