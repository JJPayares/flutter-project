import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:mobile_project_1/entitys/firebase_response.dart';
import 'package:mobile_project_1/entitys/registrys.dart';

class FirebaseConnection {
  FirebaseDatabase instanceFirebase() {
    return FirebaseDatabase.instance;
  }

  DatabaseReference firebaseRefrence() {
    return instanceFirebase().ref('/Registros/');
  }

  // final DatabaseReference _reference =
  //     FirebaseDatabase.instance.ref().child('/Registros/');

  // fetchAll() {
  //   return firebaseConnection().onValue.listen((event) {
  //     final data = event.snapshot.value.toString();
  //     //print(data.toString());
  //   });
  // }

  Future<FirebaseResponse> getAll() async {
    try {
      DatabaseReference _ref = firebaseRefrence();
      DataSnapshot res = await _ref.get();
      //final response = FirebaseResponse.fromJson(res.value as List);
      final response = FirebaseResponse.fromJson(res.value as Map);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // DatabaseReference getAll() {
  //   return _reference;
  // }
}
