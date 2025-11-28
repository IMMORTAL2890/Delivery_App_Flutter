import 'package:flutter/material.dart';
import 'package:food_delivery/Component/meal_card.dart';



class MealPage extends StatefulWidget {
  const MealPage({super.key});

  //final List<PickupCenters> centers;
  //const MealPage({super.key,required this.centers});

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          MealCard(no: 1),
          MealCard(no: 2),
          MealCard(no: 3),
          MealCard(no: 4),
          MealCard(no: 5)
    
        ],
      ),
    );
  }
}