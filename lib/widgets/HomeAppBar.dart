// ignore: unused_import, depend_on_referenced_packages
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child:  Row(
        children: [
            const Text(
              'QuickPick',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          const Spacer(),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, 'chat');
          }, icon: const Icon(Icons.chat_sharp, size: 30,color: Color.fromARGB(255, 245, 136, 3),))
        ],
      ),
    );
  }
}
