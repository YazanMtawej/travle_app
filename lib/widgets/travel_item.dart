import 'package:flutter/material.dart';
import 'package:travle_app/constants.dart';

class TravelItem extends StatelessWidget {
  const TravelItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.orangeAccent[200],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Image.asset('assets/3.jpg'),
                  ),
                  const SizedBox(height: 12,),
                  const Text(
                    'Syria',
                    style: TextStyle(fontSize: 26, color: Colors.black),
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Column(
                  children: [
                    Text('Latakia',
                        style: TextStyle(
                            fontSize: 18, color: Colors.black.withOpacity(.5))),
                        Text('Latakia is so nice',
                        style: TextStyle(
                            fontSize: 14, color: Colors.black.withOpacity(.3))),
                                  
                  ],
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 24,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
