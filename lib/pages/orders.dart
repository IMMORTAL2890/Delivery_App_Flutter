import 'package:flutter/material.dart';
import 'package:food_delivery/Component/order_card.dart';
import 'package:food_delivery/Component/order_tggle.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 3),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  const SizedBox(width: 100),
                  const Icon(Icons.shopping_bag_outlined),
                  const SizedBox(width: 15),
                  const Text(
                    "Orders",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: 
                    const OrderToggle() // Fixed: Added const keyword
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 4,
                        blurRadius: 6,
                        offset: const Offset(2, 3),
                      )],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Center(
                        child: Row(
                          children: [
                            Text(
                              '${now.day}/${now.month}/${now.year}',
                              style: const TextStyle( // Fixed: Added const keyword
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(width: 4), // Fixed: Added const keyword
                            const Icon(Icons.arrow_downward_sharp, color: Colors.redAccent) // Fixed: Added const keyword and proper spacing
                          ],
                        ),
                      ),
                    ),
                    
                  ),
                )
              ],
            ),
            const SizedBox(height: 2), // Fixed: Added const keyword
            // Fixed: Wrapped ListView with Expanded to prevent overflow
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView( // Fixed: Removed unnecessary Container wrapper
                   children:  [ // Fixed: Added const keyword for children list
                      OrderCard(orderNo: '11250', status: 0,color: 0,), // Fixed: Removed invalid 'color' parameter
                      SizedBox(height: 5), // Fixed: Added const keyword
                      OrderCard(orderNo: '11251', status: 1,color: 0,), // Fixed: Removed invalid 'color' parameter
                      SizedBox(height: 5), // Fixed: Added const keyword
                      OrderCard(orderNo: '11252', status: 2,color: 2,), // Fixed: Removed invalid 'color' parameter
                      SizedBox(height: 5), // Fixed: Added const keyword
                      OrderCard(orderNo: '11253', status: 5,color:1), // Fixed: Removed invalid 'color' parameter
                      SizedBox(height: 5), // Fixed: Added const keyword
                      OrderCard(orderNo: '11254', status: 4,color: 0,), // Fixed: Removed invalid 'color' parameter
                      SizedBox(height: 5), // Fixed: Added const keyword
                      OrderCard(orderNo: '11255', status: 3,color: 2,), // Fixed: Removed invalid 'color' parameter
                      SizedBox(height: 5), // Fixed: Added const keyword
                    ],
                  ), // Fixed: Proper ListView closing
                ),
              ),
             //BottomSheet(onClosing: onClosing, builder: builder)
          ], 
        ),
      ),
    );
  }
}
