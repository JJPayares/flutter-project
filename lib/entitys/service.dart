class Service {
  final String? lavado;
  final String? polish;
  final String? tapiceria;

  Service({this.lavado, this.polish, this.tapiceria});

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
        lavado: json['lavado'],
        polish: json['polish'],
        tapiceria: json['tapiceria']);
  }
}
