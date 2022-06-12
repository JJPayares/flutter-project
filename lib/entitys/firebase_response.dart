import 'package:flutter/material.dart';
import 'package:mobile_project_1/entitys/registrys.dart';

import '../domain/firebase_connection.dart';

class FirebaseResponse {
  List<Registrys>? registros;

  FirebaseResponse({this.registros});

  // FirebaseResponse.fromJson(Map<String, dynamic> json) {
  //   if (json['Registros'] != null) {
  //     registros = <Registrys>[];
  //     json['Registros'].forEach((value) {
  //       registros!.add(Registrys.fromJson(value));
  //     });
  //   }
  // }

  FirebaseResponse.fromJson(Map<dynamic, dynamic> json) {
    //print(json['Registros']);
    if (json['Registros'] != null) {
      registros = <Registrys>[];
      json['Registros'].forEach((key, value) {
        //print(value);
        registros!.add(Registrys.fromJson(value));
      });
    }
  }

  // FirebaseResponse.fromJson(List<dynamic> json) {
  //   registros = json.map((e) => Registrys.fromJson(e)).toList();
  // }
}
