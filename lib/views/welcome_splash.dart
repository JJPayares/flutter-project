import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeSplash extends StatefulWidget {
  const WelcomeSplash({Key? key}) : super(key: key);

  @override
  State<WelcomeSplash> createState() => Home();
}

class Home extends State<WelcomeSplash> {
  // @override
  // void initState() {
  //   Future.delayed(const Duration(seconds: 3), () {
  //     Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => Menu(),
  //         ));
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 300,
                width: 300,
                child: Lottie.asset('assets/animations/welcome.json')),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Welcome!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
