import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OrderCard extends StatelessWidget {
  
  final String? orderNo;
  final int status;
  final int color;

  const OrderCard({super.key
  ,required this.orderNo,
  required  this.status,
  required this.color});

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child:Container(
        
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color:Colors.grey.shade300,
                blurRadius: 4,
                offset: Offset(2, 2),
                spreadRadius: 4
              )
            ],
            borderRadius:BorderRadius.circular(10),
            color: Colors.white
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Order No',
                        style: TextStyle(fontSize: 15),),
                        Text('#$orderNo')
                      ],
                    )
                    ,SizedBox(width: 10,),
                    IntrinsicWidth(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:switch(color){
                             0 => const Color(0x32ff5963),
                             1 => const Color(0x3296ffb2),
                             2 => const Color(0x3297c8ff),
                             _ => const Color.fromARGB(255, 219, 204, 204),
                          }
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                          child: switch(status){
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
              ),
               Center(
                      child: Icon(CupertinoIcons.chevron_down,
                      color: Colors.redAccent),
                    )
            ],
          ),
        )
      ),
    );
  }
}