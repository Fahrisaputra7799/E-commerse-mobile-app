import 'package:flutter/material.dart';

class ItemBottomNavbar extends StatelessWidget {
  const ItemBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.maxFinite,
        height: 80,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 245, 136, 3),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 4,
              color: Colors.grey.withOpacity(1)
            )
          ]
        ),
        child: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Pay Now', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),)
            ],
          ),
        ),
      ),
    );
  }
}