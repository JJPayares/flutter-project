// ignore_for_file: unnecessary_import, unused_import

import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_project_1/domain/firebase_connection.dart';
import 'package:mobile_project_1/views/count.dart';
import 'package:mobile_project_1/views/count_screen.dart';
import 'package:mobile_project_1/views/custom_counter.dart';
import 'package:mobile_project_1/views/home_view.dart';
import 'package:mobile_project_1/views/list_view_1.dart';
import 'package:mobile_project_1/views/services_list.dart';
import 'package:mobile_project_1/views/splash.dart';
import 'package:mobile_project_1/views/text_whit_alert.dart';

import 'views/firebase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
  }
}
