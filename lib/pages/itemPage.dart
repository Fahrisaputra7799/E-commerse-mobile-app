// ignore: file_names
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:clippy_flutter/clippy_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:skl_pertama_for_real/widgets/ItemAppBar.dart';
import 'package:skl_pertama_for_real/widgets/ItemBottomNavbar.dart';

// ignore: must_be_immutable
class ItemPage extends StatelessWidget {
  ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDECF2),
      body: ListView(
        children: [
          const ItemAppBar(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: CircleAvatar(
              radius: 180,
              backgroundImage: AssetImage('images/1.jpg'),
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 45,
                        bottom: 15,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Product Title',
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        bottom: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => const Icon(
                              Icons.favorite,
                              color: Color.fromARGB(255, 245, 136, 3),
                            ),
                            onRatingUpdate: (index) {},
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: const Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  size: 18,
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: const Text(
                                  '01',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: const Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  Icons.add,
                                  size: 18,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'This is more detailed description of the product you can write here more about the product, this is lenght description',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       const Text('4,5'),
                        const SizedBox(
                          width: 5,
                        ),
                       const Icon(Icons.star, color: Colors.amber,),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 2,
                          width: 40,
                          decoration: const BoxDecoration(
                            color: Colors.grey
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('Good'),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(Icons.comment_bank, color: Colors.grey,),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 2,
                          width: 40,
                          decoration:const BoxDecoration(
                            color: Colors.grey
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('30 min'),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(Icons.watch_later, color: Colors.grey,)
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const ItemBottomNavbar(),
    );
  }
}
