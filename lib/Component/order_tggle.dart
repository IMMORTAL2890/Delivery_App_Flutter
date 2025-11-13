import 'package:flutter/material.dart';

class OrderToggle extends StatefulWidget {
  const OrderToggle({super.key});

  @override
  State<OrderToggle> createState() => _OrderToggleState();
}

class _OrderToggleState extends State<OrderToggle> {

  bool isStore = false;

  void _toggle(bool value) {
    setState(() {
      isStore = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: 200,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 4,
                      blurRadius: 6,
                      offset: const Offset(2, 3),
                    )],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Stack(
                     children: [
                      // Animated background slider
                      AnimatedAlign(
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeInOut,
                        alignment: isStore
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: FractionallySizedBox(
                          widthFactor: 0.55,
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.redAccent.withOpacity(0.3),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
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
                            onTap: () => _toggle(false),
                            child: Container(
                             
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 10,
                              ),
                              child: AnimatedDefaultTextStyle(
                                duration: const Duration(milliseconds: 250),
                                style: TextStyle(
                                  color: !isStore ? Colors.white : Colors.black54,
                                  fontSize: 16,
                                  fontWeight: !isStore
                                      ? FontWeight.w600
                                      : FontWeight.w500,
                                ),
                                child: const Text('Meal'),
                              ),
                            ),
                          ),
                
                          // Store Button
                          GestureDetector(
                            onTap: () => _toggle(true),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 28,
                                vertical: 10,
                              ),
                              child: AnimatedDefaultTextStyle(
                                duration: const Duration(milliseconds: 250),
                                style: TextStyle(
                                  color: isStore ? Colors.white : Colors.black54,
                                  fontSize: 16,
                                  fontWeight: isStore
                                      ? FontWeight.w600
                                      : FontWeight.w500,
                                ),
                                child: const Text('Store'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
  }
}