import 'package:flutter/material.dart';
import 'package:mobile_project_1/domain/firebase_connection.dart';
import 'package:mobile_project_1/entitys/registrys.dart';

class ServicesList extends StatefulWidget {
  ServicesList({Key? key}) : super(key: key);

  @override
  State<ServicesList> createState() => _ServicesListState();
}

class _ServicesListState extends State<ServicesList> {
  final dbConnection = FirebaseConnection();
  List<Registrys> list_registros = [];

  @override
  Widget build(BuildContext context) {
    fetchInfo();
    return Scaffold(
        appBar: AppBar(title: const Text('Lista de datos de la db')),
        body: Center(
          child: listData(),
        ));
  }

  Widget listData() {
    return ListView.builder(
      itemCount: list_registros.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(list_registros[index].client!.img!),
          ),
          title: Text(
              '${list_registros[index].client!.nombre} ${list_registros[index].client!.apellido!}'),
        );
      },
    );
  }

  fetchInfo() async {
    final getElements = await dbConnection.getAll();
    if (list_registros.isEmpty) {
      setState(() {
        list_registros = getElements.registros!;
      });
    }
    //print(list_registros);
  }
}
