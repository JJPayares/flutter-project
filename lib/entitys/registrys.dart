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

  @override
  String toString() {
    return '{$client,$service, $car}';
  }
}
