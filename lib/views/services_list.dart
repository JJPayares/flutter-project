import 'package:flutter/material.dart';
import 'package:mobile_project_1/domain/firebase_connection.dart';
import 'package:mobile_project_1/entitys/registrys.dart';
import 'package:mobile_project_1/views/widgets/custom_card1.dart';
import 'package:mobile_project_1/views/widgets/custom_card2.dart';

class ServicesList extends StatefulWidget {
  const ServicesList({Key? key}) : super(key: key);

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
        backgroundColor: const Color.fromARGB(234, 186, 221, 250),
        appBar: AppBar(
            title: const Center(
          child: Text('Lista de datos de la db'),
        )),
        body: Center(
          child: listData(),
        ));
  }

  Widget listData() {
    return ListView.builder(
      itemCount: list_registros.length,
      itemBuilder: (BuildContext context, int index) {
        return CustomCard2(list_registros, index);
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
