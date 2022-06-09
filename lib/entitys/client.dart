class Client {
  final String? nombre;
  final String? apellido;
  final String? licencia;
  final int? cel;
  final String? img;

  Client({this.nombre, this.apellido, this.licencia, this.cel, this.img});

  factory Client.fromJson(Map<String, dynamic> json) {
    return Client(
      nombre: json['nombre'],
      apellido: json['apellido'],
      licencia: json['licencia'],
      cel: json['cel'],
      img: json['img'],
    );
  }
}
