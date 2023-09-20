import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

import 'loginscreen.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 53, 35, 29),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'DOGGY',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Color(0xffCF5A27),
                  fontFamily: 'Bebas Neue'),
            ),
            Text(
              'CARE',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Color(0xffCF5A27),
                  fontFamily: 'Bebas Neue'),
            ),
            Image.asset('assets/doggycare.png'),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => LoginPage());
                  Navigator.push(context, route);
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffCF5A27))),
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Color.fromARGB(255, 53, 35, 29)),
                )),
          ],
        )),
      ),
    );
  }
}
