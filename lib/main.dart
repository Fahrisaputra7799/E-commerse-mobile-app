import 'package:flutter/material.dart';
import 'package:skl_pertama_for_real/pages/HomePage.dart';
import 'package:skl_pertama_for_real/pages/cartPage.dart';
import 'package:skl_pertama_for_real/pages/chat.dart';
import 'package:skl_pertama_for_real/pages/detailChat.dart';
import 'package:skl_pertama_for_real/pages/itemPage.dart';
import 'package:skl_pertama_for_real/pages/log_in.dart';
import 'package:skl_pertama_for_real/pages/profile_page.dart';
import 'package:skl_pertama_for_real/pages/sign_up.dart';

void main() => runApp(  MyApp());

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => Homepage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        "Profile" : (context) =>  ProfilePage(),
        "login": (context) => LogIn(),
        "signup": (context) => SignUp(),
        "chat": (context) => ChatPage(),
        "detailchat": (context) => DetailChat()
      },
    );
  }
}