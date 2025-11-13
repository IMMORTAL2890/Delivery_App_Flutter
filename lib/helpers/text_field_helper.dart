import 'package:flutter/material.dart';

Widget buildTextField(String label, String hint, TextInputType type) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(height: 10),
      TextField(
        keyboardType: type,
        decoration: InputDecoration(
          labelText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
      const SizedBox(height: 15),
    ],
  );
}