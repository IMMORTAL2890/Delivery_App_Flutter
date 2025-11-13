
import 'package:flutter/material.dart';

class DocumentCard extends StatelessWidget {

  final String label;
  final VoidCallback? onTap;
  final bool? isCompleted;

  const DocumentCard({
    super.key,
    required this.label,
    this.onTap,
    this.isCompleted});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  color: Colors.white12,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                )]
             ),
            child: Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (isCompleted == true) const Icon(Icons.check),

                Text(label,
                  style: const TextStyle(
                    fontSize: 18
                  ),
                ),
                const Icon(Icons.arrow_forward),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}