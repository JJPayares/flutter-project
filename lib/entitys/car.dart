import 'dart:ffi';

class Car {
  final String? color;
  final String? marca;
  final int? modelo;
  final String? placa;

  Car({this.color, this.marca, this.modelo, this.placa});

  factory Car.fromJson(Map<dynamic, dynamic> json) {
    //print(json);
    return Car(
      color: json['color'],
      marca: json['marca'],
      modelo: json['modelo'],
      placa: json['placa'],
    );
  }
}
