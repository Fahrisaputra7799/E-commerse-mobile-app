import 'package:flutter/material.dart';
import 'package:skl_pertama_for_real/widgets/profile_app_bar.dart';
// ignore: unused_import, depend_on_referenced_packages
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ProfileAppBar(),
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('images/profile_image.jpeg'),
          ),
          const SizedBox(height: 10),
          const Text(
            'Fahri Saputra',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            'fahrisptra7799@gmail.com',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: widgets.length,
              itemBuilder: (context, index) {
                var menu = widgets[index];
                return ListTile(
                  title: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 80,
                      color: const Color.fromARGB(255, 245, 136, 3),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(menu['nameOfSistem'],
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            Icon(getIconForItem(menu['nameOfSistem']),
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'login');
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  // funsi untuk membangun opsi profile
  

  IconData getIconForItem(String itemName) {
    switch (itemName) {
      case 'Edit Your Profile':
        return Icons.edit;
      case 'History':
        return Icons.history;
      case 'Payment Methods':
        return Icons.payment;
      case 'Settings':
        return Icons.settings;
      case 'Log Out':
        return Icons.logout;
      default:
        return Icons.help_outline;
    }
  }
}

final List<Map> widgets = [
  {'nameOfSistem': 'Edit Your Profile'},
  {'nameOfSistem': 'History'},
  {'nameOfSistem': 'Payment Methods'},
  {'nameOfSistem': 'Settings'},
  {'nameOfSistem': 'Log Out'},
];
