import 'package:flutter/material.dart';

class MealSubCard extends StatefulWidget {
  final int orderNo;
  final String type;
  final String time;
  final int status;
  final int color;

  const MealSubCard({super.key,
  required this.orderNo,
  required this.type,
  required this.time,
  required this.status,
  required this.color});

  @override
  State<MealSubCard> createState() => _MealSubCardState();
}

class _MealSubCardState extends State<MealSubCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.white,
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order No.#${widget.orderNo}',
                  style: TextStyle(
                    fontSize: 18
                  ),),
                  const SizedBox(width: 10,),
                      IntrinsicWidth(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color:switch(widget.color){
                               0 => const Color(0x32ff5963),
                               1 => const Color(0x3296ffb2),
                               2 => const Color(0x3297c8ff),
                               _ => const Color.fromARGB(255, 219, 204, 204),
                            }
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                            child: switch(widget.status){
                              0 => const Text('Pickup Pending',
                              style: TextStyle(color: Color.fromARGB(255, 241, 63, 50)),),
                              1 => const Text('Pickup Failed',
                              style: TextStyle(color: Color.fromARGB(255, 230, 19, 4)),),
                              2 => const Text('Pickup Resheduled',
                              style: TextStyle(color: Color.fromARGB(255, 18, 99, 165)),),
                              3 => const Text('Delivery Resheduled',
                              style: TextStyle(color: Color.fromARGB(255, 8, 119, 209)),),
                              4 => const Text('Delivery Failed',
                              style: TextStyle(color: Color.fromARGB(255, 240, 62, 49),)),
                              5 => const Text('Delivered',
                              style: TextStyle(color: Color.fromARGB(255, 16, 159, 21)),),
                              _ => const Text('Unknown',
                              style: TextStyle(color: Colors.white),),
                            },
                          ),
                        ),
                      ),
                  
                ],
              ),
              Text('${widget.type} | ${widget.time}',
              style: TextStyle(
                fontSize: 18
              ),)

            ],
          ),
        ),
      ),
    );
  }
}