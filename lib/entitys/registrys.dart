import 'package:mobile_project_1/entitys/car.dart';
import 'package:mobile_project_1/entitys/client.dart';
import 'package:mobile_project_1/entitys/service.dart';

class Registrys {
  Client? client;
  Service? service;
  Car? car;

  Registrys({this.client, this.service, this.car});

  factory Registrys.fromJson(Map<dynamic, dynamic> json) {
    return Registrys(
        client:
            json['Cliente'] != null ? Client.fromJson(json['Cliente']) : null,
        service: json['Servicio'] != null
            ? Service.fromJson(json['Servicio'])
            : null,
        car: json['Carro'] != null ? Car.fromJson(json['Carro']) : null);
  }

  // factory Registrys.fromJson(List<dynamic> json) {
  //   print(json);
  //   return Registrys(
  //       car: json[0] != null ? Car.fromJson(json[0]) : null,
  //       client: json[1] != null ? Client.fromJson(json[1]) : null,
  //       service: json[2] != null ? Service.fromJson(json[2]) : null);
  // }
}
