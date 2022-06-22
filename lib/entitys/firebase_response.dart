import 'package:mobile_project_1/entitys/registrys.dart';

class FirebaseResponse {
  List<Registrys>? registros;

  FirebaseResponse({this.registros});

  FirebaseResponse.fromJson(List<dynamic> json) {
    registros = json.map((e) => Registrys.fromJson(e)).toList();
  }
}
