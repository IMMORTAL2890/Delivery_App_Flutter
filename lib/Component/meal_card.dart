import 'package:flutter/material.dart';
import 'package:food_delivery/Component/meal_sub_card.dart';

class MealCard extends StatefulWidget {
  final int no ; 
  const MealCard({super.key, required this.no});

  @override
  State<MealCard> createState() => _MealCardState();
}

class _MealCardState extends State<MealCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Pickup Center-${widget.no}',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 120),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red[50]
                      ),
                      child: Icon(
                        Icons.phone, 
                        color: Colors.red
                        )
                      ),
                      SizedBox(width: 20),
                       Container(
                        height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red[50]
                      ),
                      child: Icon(
                        Icons.message_outlined, 
                        color: Colors.red
                        )
                      ),
                  ],
                ),
                MealSubCard(orderNo: 1109, type: 'BreakFast', time: '8:00 AM', status: 4, color: 0),
                MealSubCard(orderNo: 1110, type: 'Lunch', time: '12:00 PM', status: 1, color: 0),
                MealSubCard(orderNo: 1111, type: 'Dinner', time: '8:00 PM', status: 3, color: 1)
              ],
            ),
          ),
        ),

      
      ),
    );
  }
}
