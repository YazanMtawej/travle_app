
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
   const CustomCard({
    super.key,
  });

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      //  Navigator.pushNamed(context, UpdateProductPage.id,arguments: product);
      },
      child: Stack(
        clipBehavior:Clip.none ,
        children: [
          Container(
           
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  color: Colors.orange.withOpacity(0.4),
                  spreadRadius: 0,
                  offset: const Offset(10, 10)
                ),
              ]
            ),
            child: Card(
              elevation: 10,
              child: Padding(
                
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'plane',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    const SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                         r'$' '400',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.heart_broken_sharp,
                              color: Colors.red,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
      
          Positioned(
            right: 7,
            top: -30,
      
            child: Image.asset('assets/6.jpg',height: 120,width: 120,),
      ),
      ],
        ),
    );
  }
}
