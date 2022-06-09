import 'package:firebase_database/firebase_database.dart';
import 'package:mobile_project_1/entitys/firebase_response.dart';
import 'package:mobile_project_1/entitys/registrys.dart';

class FirebaseConnection {
  FirebaseDatabase instanceFirebase() {
    return FirebaseDatabase.instance;
  }

  DatabaseReference firebaseConnection() {
    return instanceFirebase().ref('/Registros/');
  }

  // fetchAll() {
  //   return firebaseConnection().onValue.listen((event) {
  //     final data = event.snapshot.value.toString();
  //     //print(data.toString());
  //   });
  // }

  Future<FirebaseResponse> getAllRegistros() async {
    final snapshot = await firebaseConnection().get();
    final registrosList = snapshot.value as List<dynamic>;
    print(registrosList);
    return FirebaseResponse.fromJson(registrosList);
  }
}
