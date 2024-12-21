import 'package:flutter/material.dart';
import 'package:travle_app/widgets/travel_item.dart';

class TravelPageBody extends StatelessWidget {
  const TravelPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
            itemCount: 10,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return  const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: TravelItem(),
                );
              });
  }
}