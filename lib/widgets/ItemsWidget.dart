import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemsWidget extends StatelessWidget {
  ItemsWidget({super.key});

  List<String> myProductName = [
    'Korean Chicken',
    'Gacoan Setan',
    'Bakso Lava',
    'Steak Salmon',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.70,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFFFF7043),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '-50%',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(Icons.favorite_border, color: Colors.red)
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'itemPage');
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/1.jpg'),
                      radius: 63,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: const Text('Korean Chicken', 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit,  veniam, quis nostrud',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF9800),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 4,
                        color: Colors.grey.withOpacity(0.3)
                      )
                    ]
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.pushNamed(context, 'itemPage');
                  }, child: Text('Check Details', style: TextStyle(
                    color: Colors.white
                  ),)),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFFFF7043),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '-50%',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(Icons.favorite_border, color: Colors.red)
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'itemPage');
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/Serum.webp'),
                      radius: 63,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: const Text('Serum Vitamin C', 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit,  veniam, quis nostrud',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF9800),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 4,
                        color: Colors.grey.withOpacity(0.3)
                      )
                    ]
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.pushNamed(context, 'itemPage');
                  }, child: Text('Check Details', style: TextStyle(
                    color: Colors.white
                  ),)),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFFFF7043),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '-50%',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(Icons.favorite_border, color: Colors.red)
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'itemPage');
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/shoes.webp'),
                      radius: 63,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: const Text('Adidas Ultra Boost', 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit,  veniam, quis nostrud',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF9800),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 4,
                        color: Colors.grey.withOpacity(0.3)
                      )
                    ]
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.pushNamed(context, 'itemPage');
                  }, child: Text('Check Details', style: TextStyle(
                    color: Colors.white
                  ),)),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFFFF7043),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '-50%',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(Icons.favorite_border, color: Colors.red)
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'itemPage');
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/meja.webp'),
                      radius: 63,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: const Text('Meja kayu Multifungsi', 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit,  veniam, quis nostrud',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF9800),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 4,
                        color: Colors.grey.withOpacity(0.3)
                      )
                    ]
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.pushNamed(context, 'itemPage');
                  }, child: const Text('Check Details', style: TextStyle(
                    color: Colors.white
                  ),)),
                )
              ],
            ),
          )
      ],
    );
  }
}
