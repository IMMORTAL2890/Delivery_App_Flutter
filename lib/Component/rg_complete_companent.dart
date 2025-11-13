import 'package:flutter/material.dart';

class RgCompleteCompanent extends StatelessWidget {
  final String? title;
  final bool? color;

  const RgCompleteCompanent({
    super.key,
    this.title,
    this.color,
 });

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                if (color == true) const Text('Approved',style: TextStyle(color: Colors.green),)
                else const Text('Verification Pending',style: TextStyle(color: Colors.red),),
              ],
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),)
    );
  }
}