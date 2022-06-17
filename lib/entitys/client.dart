class Client {
  final String? nombre;
  final String? apellido;
  final String? licencia;
  final int? cel;
  final String? img;

  Client({this.nombre, this.apellido, this.licencia, this.cel, this.img});

  factory Client.fromJson(Map<dynamic, dynamic> json) {
    //print(json);
    return Client(
      nombre: json['nombre'],
      apellido: json['apellido'],
      licencia: json['licencia'],
      cel: json['cel'],
      img: json['img'],
    );
  }

  String toString() {
    return 'Client nombre: $nombre, apellido: $apellido, licencia: $licencia, cel: $cel, img:$img';
  }
}


