import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_project_1/views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
      // Scaffold(
      //   appBar: AppBar(
      //     title: const Text("Title"),
      //   ),
      //   body: const Center(
      //     child: Text("Hola mundo!"),
      //   )),
    );
  }
}
