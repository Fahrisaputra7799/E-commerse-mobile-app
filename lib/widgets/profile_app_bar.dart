import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            IconButton(onPressed: (){
              Navigator.pushReplacementNamed(context, '/');
            }, icon: Icon(Icons.arrow_back)),
            const SizedBox(
              width: 170,
            ),
            Text('Profile', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ),
    );
  }
}