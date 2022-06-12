import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
          title: const Text("Title de home view"),
        ),
        body: const Center(
          child: Text("Hola mundo desde home view!"),
        ));
  }
}
