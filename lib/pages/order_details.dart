import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Constant/app_theme.dart';
import 'package:food_delivery/pages/map_page.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';

class OrderDetails extends StatefulWidget {
  final String? orderNo;
  final int status;
  final int color;
  final String? customerName;
  final String? deliveryAddress;
  final double? amount;
  final bool? isPaid;
  const OrderDetails({
    super.key,
    required this.orderNo,
    required this.status,
    required this.color,
    required this.customerName,
    required this.deliveryAddress,
    required this.amount,
    required this.isPaid,});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Row(
            children: [
              Icon(Icons.shopping_bag_outlined),
              const SizedBox(width: 10),
              const Text('Order Details'),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade100, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.shade300,
                  //     blurRadius: 4,
                  //     offset: const Offset(2, 2),
                  //     spreadRadius: 4,
                  //   ),
                  // ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text(
                                    'Order No',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text('#${widget.orderNo}'),
                                ],
                              ),
                              const SizedBox(width: 10),
                              IntrinsicWidth(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: switch (widget.color) {
                                      0 => const Color(0x32ff5963),
                                      1 => const Color(0x3296ffb2),
                                      2 => const Color(0x3297c8ff),
                                      _ => const Color.fromARGB(255, 219, 204, 204),
                                    },
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 2,
                                    ),
                                    child: switch (widget.status) {
                                      0 => const Text(
                                        'Pickup Pending',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 241, 63, 50),
                                        ),
                                      ),
                                      1 => const Text(
                                        'Pickup Failed',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 230, 19, 4),
                                        ),
                                      ),
                                      2 => const Text(
                                        'Pickup Resheduled',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 18, 99, 165),
                                        ),
                                      ),
                                      3 => const Text(
                                        'Delivery Resheduled',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 8, 119, 209),
                                        ),
                                      ),
                                      4 => const Text(
                                        'Delivery Failed',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 240, 62, 49),
                                        ),
                                      ),
                                      5 => const Text(
                                        'Delivered',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 16, 159, 21),
                                        ),
                                      ),
                                      _ => const Text(
                                        'Unknown',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          // DottedLine(
                          //   dashColor: Colors.grey[400]!,
                          //   lineThickness: 2,
                          //   dashLength: 3,
                          //   dashGapLength: 3,
                          //   dashGapRadius: 0,
                          // ),
                          // if (widget.deliveryAddress != null) ...[
                          //   const SizedBox(height: 15),
                          //   Row(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       SizedBox(width: 7),
                          //       Icon(AppTheme.mapPin, color: AppTheme.color),
                          //       const SizedBox(width: 8),
                          //       Expanded(
                          //         child: Column(
                          //           crossAxisAlignment: CrossAxisAlignment.start,
                          //           children: [
                          //             const Text(
                          //               'Sanju Yadav',
                          //               style: TextStyle(
                          //                 fontSize: 14,
                          //                 fontWeight: FontWeight.w600,
                          //               ),
                          //             ),
                          //             const SizedBox(height: 4),
                          //             Text(
                          //               widget.deliveryAddress!,
                          //               style: TextStyle(
                          //                 fontSize: 12,
                          //                 color: Colors.grey[600],
                          //               ),
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //       Container(
                          //         height: 35,
                          //         decoration: BoxDecoration(
                          //           color: Color(0x190b488e),
                          //           shape: BoxShape.circle,
                          //         ),
                          //         child: IconButton(
                          //           icon: Icon(
                          //             CupertinoIcons.phone_fill,
                          //             color: AppTheme.color,
                          //           ),
                          //           onPressed: () {},
                          //           padding: const EdgeInsets.all(6),
                          //           constraints: const BoxConstraints(),
                          //         ),
                          //       ),
                          //       SizedBox(width: 10),
                          //       Container(
                          //         height: 35,
                          //         decoration: BoxDecoration(
                          //           color: Color(0x190b488e),
                          //           shape: BoxShape.circle,
                          //         ),
                          //         child: IconButton(
                          //           icon: Icon(
                          //             Icons.message,
                          //             color: AppTheme.color,
                          //           ),
                          //           onPressed: () {},
                          //           padding: const EdgeInsets.all(6),
                          //           constraints: const BoxConstraints(),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ],
                    
                          Column(
                                    children: [
                                      DottedLine(
                                         dashColor: Colors.grey[400]!,
                                          lineThickness: 2,
                                          dashLength: 3,
                                          dashGapLength: 3,
                                          dashGapRadius: 0,
                                      ),
                                      SizedBox(height: 15),
                                          
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          if (widget.customerName != null) ...[
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.person_outline,
                                                  size: 25,
                                                  color: AppTheme.color,
                                                ),
                                                const SizedBox(width: 8),
                                                Text(
                                                  widget.customerName!,
                                                  style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(width: 50),
                                                // Container(
                                                //   height: 40,
                                                //   decoration: BoxDecoration(
                                                //     shape: BoxShape.circle,
                                                //     color: AppTheme.color[50],
                                                //   ),
                                                //   child: IconButton(
                                                //     onPressed: () {},
                                                //     icon: const Icon(
                                                //       Icons.phone,
                                                //       color: AppTheme.color,
                                                //       size: 20,
                                                //     ),
                                                //     padding: const EdgeInsets.all(8),
                                                //     constraints: const BoxConstraints(),
                                                //   ),
                                                // ),
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                          ],
                                        ],
                                      ),
                                          
                                      //       ],
                                      //     ),
                                      //   ),
                                      // ),
                                      
                                       
                                          
                                          Padding(
                                            padding: const EdgeInsets.all(0),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Image(
                                                  image: AssetImage(
                                                    'assets/icons/hand1.png',
                                                  ),
                                                  height: 30,
                                                  width: 30,
                                                ),
                                                const SizedBox(width: 8),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Pickup Address',
                                                        style: const TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 4),
                                                      Text(
                                                          widget.deliveryAddress!,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey[600],
                                                        ),
                                                      ),
                                                      const SizedBox(height: 8),
                                                      // ...center.items.map(
                                                      //   (item) => Padding(
                                                      //     padding: const EdgeInsets.only(
                                                      //       bottom: 8.0,
                                                      //     ),
                                                      //     // child: Row(
                                                      //     //   children: [
                                                      //     //     ClipRRect(
                                                      //     //       borderRadius:
                                                      //     //           BorderRadius.circular(
                                                      //     //             8,
                                                      //     //           ),
                                                      //     //       child: Image.asset(
                                                      //     //         item.image,
                                                      //     //         width: 50,
                                                      //     //         height: 50,
                                                      //     //         fit: BoxFit.cover,
                                                      //     //         errorBuilder:
                                                      //     //             (
                                                      //     //               context,
                                                      //     //               error,
                                                      //     //               stack,
                                                      //     //             ) => Container(
                                                      //     //               width: 50,
                                                      //     //               height: 50,
                                                      //     //               color: Colors
                                                      //     //                   .grey[300],
                                                      //     //               child: const Icon(
                                                      //     //                 Icons.fastfood,
                                                      //     //               ),
                                                      //     //             ),
                                                      //     //       ),
                                                      //     //     ),
                                                      //     //     const SizedBox(width: 12),
                                                      //     //     Expanded(
                                                      //     //       child: Column(
                                                      //     //         crossAxisAlignment:
                                                      //     //             CrossAxisAlignment
                                                      //     //                 .start,
                                                      //     //         children: [
                                                      //     //           Text(
                                                      //     //             item.name,
                                                      //     //             style:
                                                      //     //                 const TextStyle(
                                                      //     //                   fontSize: 13,
                                                      //     //                   fontWeight:
                                                      //     //                       FontWeight
                                                      //     //                           .w500,
                                                      //     //                 ),
                                                      //     //           ),
                                                      //     //           const SizedBox(
                                                      //     //             height: 2,
                                                      //     //           ),
                                                      //     //           Text(
                                                      //     //             item.weight,
                                                      //     //             style: TextStyle(
                                                      //     //               fontSize: 12,
                                                      //     //               color: Colors
                                                      //     //                   .grey[600],
                                                      //     //             ),
                                                      //     //           ),
                                                      //     //           Text(
                                                      //     //             'Qty: ${item.quantity}',
                                                      //     //             style: TextStyle(
                                                      //     //               fontSize: 12,
                                                      //     //               color: Colors
                                                      //     //                   .grey[600],
                                                      //     //             ),
                                                      //     //           ),
                                                      //     //         ],
                                                      //     //       ),
                                                      //     //     ),
                                                      //     //   ],
                                                      //     // ),
                                                      //   ),
                                                      // ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x190b488e),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: IconButton(
                                                    icon: const Icon(
                                                      CupertinoIcons
                                                          .phone_fill,
                                                      color: AppTheme.color,
                                                      size: 20,
                                                      weight: 700,
                                                    ),
                                                    onPressed: () {},
                                                    padding:
                                                        const EdgeInsets.all(
                                                          6,
                                                        ),
                                                    constraints:
                                                        const BoxConstraints(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 12,),
                                      Divider(),
                                      // Delivery Address
                                      if (widget.deliveryAddress != null) ...[
                                        const SizedBox(height: 12),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(width: 7),
                                            Icon(
                                              AppTheme.mapPin,
                                              color: AppTheme.color,
                                              size: 20,
                                            ),
                                            const SizedBox(width: 8),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    'Sanju Yadav',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 4),
                                                  Text(
                                                    widget.deliveryAddress!,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey[600],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x190b488e),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: IconButton(
                                                    icon: const Icon(
                                                      CupertinoIcons
                                                          .phone_fill,
                                                      color: AppTheme.color,
                                                      size: 20,
                                                      weight: 700,
                                                    ),
                                                    onPressed: () {},
                                                    padding:
                                                        const EdgeInsets.all(
                                                          6,
                                                        ),
                                                    constraints:
                                                        const BoxConstraints(),
                                                  ),
                                                ),
                                                SizedBox(width: 5,),
                                            Container(
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: Color(0x190b488e),
                                                shape: BoxShape.circle,
                                              ),
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.message,
                                                  color: AppTheme.color,
                                                ),
                                                onPressed: () {},
                                                padding: const EdgeInsets.all(
                                                  6,
                                                ),
                                                constraints:
                                                    const BoxConstraints(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                          
                                      // Amount and Payment Status
                                      if (widget.amount != null) ...[
                                        const SizedBox(height: 16),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5.0),
                                          child: Row(
                                            children: [
                                              HeroIcon(HeroIcons.banknotes),
                                              const SizedBox(width: 8),
                                              const Icon(
                                                CupertinoIcons.money_dollar,
                                                size: 18,
                                              ),
                                              Text(
                                                widget.amount!.toStringAsFixed(0),
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(width: 12),
                                              if (widget.isPaid != null)
                                                Row(
                                                  children: [
                                                    Icon(
                                                      widget.isPaid!
                                                          ? Icons.check_circle
                                                          : Icons.pending,
                                                      color: widget.isPaid!
                                                          ? Colors.green[700]
                                                          : Colors.orange[700],
                                                      size: 14,
                                                    ),
                                                    const SizedBox(width: 4),
                                                    Text(
                                                      widget.isPaid!
                                                          ? 'Paid'
                                                          : 'Unpaid',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: widget.isPaid!
                                                            ? Colors.green[700]
                                                            : Colors.orange[700],
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                          
                                      const SizedBox(height: 8),
                                      //Time left Section
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                          color: Color(0x190b488e),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Delivery Pickup By',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: AppTheme.color,
                                                          fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                      //SizedBox(height: 8),
                                                      Text('Tomorrow'),
                                                      Text(
                                                        '5:30 PM, Thu, 15/08/2025',
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    color: Colors.white,
                                                    child: DottedBorder(
                                                      color:
                                                          Colors.blue.shade900,
                                                      borderType:
                                                          BorderType.RRect,
                                                      radius: Radius.circular(
                                                        12,
                                                      ),
                                                      padding: EdgeInsets.all(
                                                        6,
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .access_time,
                                                                color:
                                                                    AppTheme
                                                                        .color,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(
                                                                'TIME LEFT',
                                                                style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: AppTheme
                                                                      .color,
                                                                  fontSize: 16,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            '1:04 Hrs',
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Update Status',
                                                    style: TextStyle(
                                                      color: AppTheme.color,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ),
                                        
                                                      color: Colors.white,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                            4.0,
                                                          ),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            'Select an Option',
                                                          ),
                                                          SizedBox(width: 8),
                                                          Icon(
                                                            CupertinoIcons
                                                                .chevron_down,
                                                            color:
                                                                AppTheme.color,
                                                            size: 15,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                          
                                      // Confirm Button
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 60,
                                          width: double.infinity,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Get.to(() => MapPage());
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: AppTheme.color,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              padding: const EdgeInsets.symmetric(
                                                vertical: 14,
                                              ),
                                            ),
                                            child: const Text(
                                              'Confirm',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                
                          
                    
                          // GestureDetector(
                          //   onTap: () {
                          //     isExpanded.value = !isExpanded.value;
                          //   },
                          //   child: Container(
                          //     padding: const EdgeInsets.all(8),
                          //     child: Obx(
                          //       () => Icon(
                          //         isExpanded.value
                          //             ? CupertinoIcons.chevron_up
                          //             : CupertinoIcons.chevron_down,
                          //         color: Colors.blue.shade900,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
