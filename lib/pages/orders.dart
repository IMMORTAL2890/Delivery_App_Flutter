import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Constant/app_theme.dart';
import 'package:food_delivery/Controllers/menu_controller.dart';
import 'package:food_delivery/Controllers/order_controller.dart';
import 'package:food_delivery/Models/menu_model.dart';
import 'package:food_delivery/pages/menu.dart';
import 'package:food_delivery/pages/store_page.dart';
import 'package:get/get.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  DateTime now = DateTime.now();
  final OrderController orderController = Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    final MenuDetailsController menuController = Get.put(
      MenuDetailsController(),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.2),
          child: Row(
            children: [
              Icon(Icons.shopping_bag_outlined)
              ,SizedBox(width: 10,),
              Text('Orders',style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade100, Colors.white],
          ),
        ),
        child: Column(
          children: [
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Obx(
                    () => Container(
                      width: 186,
                      decoration: BoxDecoration(
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.shade200,
                        //     spreadRadius: 4,
                        //     blurRadius: 6,
                        //     offset: const Offset(2, 3),
                        //   ),
                        // ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                          // Animated background slider
                          AnimatedAlign(
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeInOut,
                            alignment: menuController.isStore.value
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: FractionallySizedBox(
                              widthFactor: 0.53,
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: AppTheme.color,
                                  borderRadius: BorderRadius.circular(25),
                                  //   boxShadow: [
                                  //     BoxShadow(
                                  //       color: Colors.redAccent.withOpacity(
                                  //         0.3,
                                  //       ),
                                  //       blurRadius: 8,
                                  //       offset: const Offset(0, 2),
                                  //     ),
                                  //   ],
                                ),
                              ),
                            ),
                          ),
                  
                          // Buttons
                          Row(
                            //mainAxisSize: MainAxisSize.min,
                            children: [
                              // Meal Button
                              GestureDetector(
                                onTap: () => menuController.isStore(false),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 23,
                                    vertical: 10,
                                  ),
                                  child: AnimatedDefaultTextStyle(
                                    duration: const Duration(
                                      milliseconds: 250,
                                    ),
                                    style: TextStyle(
                                      color: !menuController.isStore.value
                                          ? Colors.white
                                          : Colors.black54,
                                      fontSize: 16,
                                      fontWeight:
                                          !menuController.isStore.value
                                          ? FontWeight.w600
                                          : FontWeight.w500,
                                    ),
                                    child: const Text('Future'),
                                  ),
                                ),
                              ),
                  
                              // Store Button
                              GestureDetector(
                                onTap: () => menuController.isStore(true),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 23,
                                    vertical: 10,
                                  ),
                                  child: AnimatedDefaultTextStyle(
                                    duration: const Duration(
                                      milliseconds: 250,
                                    ),
                                    style: TextStyle(
                                      color: menuController.isStore.value
                                          ? Colors.white
                                          : Colors.black54,
                                      fontSize: 16,
                                      fontWeight: menuController.isStore.value
                                          ? FontWeight.w600
                                          : FontWeight.w500,
                                    ),
                                    child: const Text('Today'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey.shade200,
                      //     spreadRadius: 4,
                      //     blurRadius: 6,
                      //     offset: const Offset(2, 3),
                      //   ),
                      // ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),

                    child: Obx(
                      () => Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Center(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<int>(
                              icon: Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Icon(
                                  CupertinoIcons.chevron_down,
                                  color: AppTheme.color,
                                  size: 20,
                                ),
                              ),
                              value: orderController.selectedValue.value,
                              items: [
                                DropdownMenuItem(
                                  value: 1,
                                  child: Text(
                                    '${now.day - 5}/${now.month}/${now.year}',
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 2,
                                  child: Text(
                                    '${now.day - 4}/${now.month}/${now.year}',
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 3,
                                  child: Text(
                                    '${now.day - 3}/${now.month}/${now.year}',
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 4,
                                  child: Text(
                                    '${now.day - 2}/${now.month}/${now.year}',
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 5,
                                  child: Text(
                                    '${now.day - 1}/${now.month}/${now.year}',
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 6,
                                  child: Text(
                                    '${now.day}/${now.month}/${now.year}',
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 7,
                                  child: Text(
                                    '${now.day + 1}/${now.month}/${now.year}',
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 8,
                                  child: Text(
                                    '${now.day + 2}/${now.month}/${now.year}',
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 9,
                                  child: Text(
                                    '${now.day + 3}/${now.month}/${now.year}',
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 10,
                                  child: Text(
                                    '${now.day + 4}/${now.month}/${now.year}',
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 11,
                                  child: Text(
                                    '${now.day + 5}/${now.month}/${now.year}',
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                              ],
                              onChanged: (value) {
                                if (value != null) {
                                  orderController.changeValue(value);
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Fixed: Wrapped ListView with Expanded to prevent overflow
            Expanded(
              child: Obx(() {
                if (menuController.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                }
              
                final menu = menuController.menu.value;
              
                if (menu == null) {
                  return const Center(child: Text("No menu loaded"));
                }
              
                return menuController.isStore.value
                    ? const StorePage()
                    : Menu(
                        imgRepo: menu.imageRepository ?? [],
                        items: menu.catList!
                            .expand((cat) => cat.itemList ?? <MenuItem>[])
                            .toList(),
                      );
              }),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 90,
      //   decoration: BoxDecoration(
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.grey.shade200,
      //         spreadRadius: 7,
      //         blurRadius: 8,
      //         offset: const Offset(3, 0),
      //       ),
      //     ],
      //     borderRadius: const BorderRadius.only(
      //       topLeft: Radius.circular(30),
      //       topRight: Radius.circular(30),
      //     ),
      //     color: Colors.white,
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       ElevatedButton.icon(
      //         onPressed: () {
      //           Get.to(MapPage());
      //         },
      //         style: ElevatedButton.styleFrom(
      //           backgroundColor: Colors.redAccent,
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10),
      //           ),
      //         ),
      //         icon: const Icon(
      //           Icons.shopping_bag_outlined,
      //           color: Colors.white,
      //         ),
      //         label: const Text(
      //           'Orders',
      //           style: TextStyle(
      //             fontSize: 18,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //       ElevatedButton.icon(
      //         onPressed: () {},
      //         style: ElevatedButton.styleFrom(
      //           backgroundColor: Colors.white,
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10),
      //           ),
      //         ),
      //         icon: const Icon(Icons.person_outline, color: Colors.black),
      //         label: const Text(
      //           'Account',
      //           style: TextStyle(
      //             fontSize: 18,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.black,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
