import 'package:flutter/material.dart';
import 'package:food_delivery/Component/order_card.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          children: [
            OrderCard(
              orderNo: '11250',
              status: 0,
              color: 0,
              customerName: 'Aman Sharma',
              pickupAddress: 'Sample Pickup Point A',
              deliveryAddress:
                  '201/D, Ananta Apts, Near Jal Bhavan, Andheri 400069',
              amount: 2300,
              isPaid: true,
            ),

            SizedBox(height: 5),

            OrderCard(
              orderNo: '11251',
              status: 1,
              color: 0,
              customerName: 'Rohit Verma',
              pickupAddress: 'Shop 14, Neelkanth Market, Powai 400076',
              deliveryAddress: '501/B, Green Valley, Ghatkopar East 400075',
              amount: 1490,
              isPaid: false,
            ),

            SizedBox(height: 5),

            OrderCard(
              orderNo: '11252',
              status: 2,
              color: 2,
              customerName: 'Sanya Patel',
              pickupAddress: '22/B, Veda Complex, Kandivali West 400067',
              deliveryAddress: 'Plot 9, Pearl Residency, Malad East 400064',
              amount: 1899,
              isPaid: true,
            ),

            SizedBox(height: 5),

            OrderCard(
              orderNo: '11253',
              status: 5,
              color: 1,
              customerName: 'Vikas Deshmukh',
              pickupAddress: 'G-12, Om Plaza, Navi Mumbai 410210',
              deliveryAddress: 'C-303, Royal Homes, Charni Road 400002',
              amount: 2750,
              isPaid: true,
            ),

            SizedBox(height: 5),

            OrderCard(
              orderNo: '11254',
              status: 4,
              color: 0,
              customerName: 'Megha Bhandari',
              pickupAddress: 'Shop 3, Sunrise Tower, Thane West 400601',
              deliveryAddress: 'Flat 18, Pink Homes, Dadar West 400028',
              amount: 990,
              isPaid: false,
            ),

            SizedBox(height: 5),

            OrderCard(
              orderNo: '11255',
              status: 3,
              color: 2,
              customerName: 'Karan Singh',
              pickupAddress: '201, Unity Chambers, Andheri West 400053',
              deliveryAddress: '17/B, Golden Nest, Borivali East 400066',
              amount: 3200,
              isPaid: true,
            ),

            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
