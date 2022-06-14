import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:mobile_project_1/entitys/firebase_response.dart';

class FirebaseConnection {
  FirebaseDatabase instanceFirebase() {
    return FirebaseDatabase.instance;
  }

  DatabaseReference firebaseRefrence() {
    return instanceFirebase().ref('/Registros/');
  }

  DatabaseReference firebaseRefrenceById(id) {
    return instanceFirebase().ref('/Registros/Registros/$id');
  }

  // Future<FirebaseResponse> getAll() async {
  //   try {
  //     DatabaseReference _ref = firebaseRefrence();
  //     DataSnapshot res = await _ref.get();
  //     //final response = FirebaseResponse.fromJson(res.value as List);
  //     final response = FirebaseResponse.fromJson(res.value as Map);
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  Future<FirebaseResponse> getAll() async {
    try {
      DatabaseReference _ref = firebaseRefrence();
      DataSnapshot res = await _ref.get();
      final toJson = json.encode(res.value);
      final fromJson = json.decode(toJson);
      final response = FirebaseResponse.fromJson(fromJson.values.toList());
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<FirebaseResponse> getOne(id) async {
    try {
      DatabaseReference _ref = firebaseRefrenceById(id);
      DataSnapshot res = await _ref.get();
      final toJson = json.encode(res.value);
      final fromJson = json.decode(toJson);
      final list = fromJson.values;
      final response = FirebaseResponse.fromJson(fromJson.values.toList());
      return list;
    } catch (e) {
      rethrow;
    }
  }
}
