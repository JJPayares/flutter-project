import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_project_1/views/count.dart';
import 'package:mobile_project_1/views/count_screen.dart';
import 'package:mobile_project_1/views/custom_counter.dart';
import 'package:mobile_project_1/views/home_view.dart';
import 'package:mobile_project_1/views/list_view_1.dart';
import 'package:mobile_project_1/views/text_whit_alert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ListView1());
    // Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Title"),
    //   ),
    //   body: const Center(
    //     child: Text("Hola mundo!"),
    //   )),
  }
}
