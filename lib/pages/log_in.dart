import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(80),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/ecommerse_logo.png'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 70,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 4,
                        color: Colors.grey.withOpacity(0.1)),
                  ]),
              child: const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Your Name account',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 70,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 4,
                        color: Colors.grey.withOpacity(0.1)),
                  ]),
              child: const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 136, 3), borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/');
                      },
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )))),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 2,
                width: 100,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Or Login with',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 2,
                width: 100,
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 80,
                  height: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            color: Colors.grey.withOpacity(1)),
                      ]),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                        size: 50,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 80,
                  height: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            color: Colors.grey.withOpacity(1)),
                      ]),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                        size: 50,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 80,
                  height: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            color: Colors.grey.withOpacity(1)),
                      ]),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.whatshot_sharp,
                        size: 50,
                      )),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account?'),
              TextButton(onPressed: (){
                Navigator.pushReplacementNamed(context, 'signup');
              }, child: Text('Sign up!'))
            ],
          )
        ],
      ),
    );
  }
}
