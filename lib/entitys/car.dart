class Car {
  final String? color;
  final String? marca;
  final String? modelo;
  final String? placa;

  Car({this.color, this.marca, this.modelo, this.placa});

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      color: json['color'],
      marca: json['marca'],
      modelo: json['modelo'],
      placa: json['placa'],
    );
  }
}
