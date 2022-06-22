import 'package:flutter/material.dart';

class AdminProfileView extends StatelessWidget {
  const AdminProfileView({Key? key}) : super(key: key);
  static Map<String, dynamic> profileData = {
    "name": 'Juan',
    "lastname": 'Payares',
    "img": 'http://i.imgur.com/DrAgTNj.png',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(child: Text("Perfil de usuario")),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  '${profileData["name"]} ${profileData["lastname"]}',
                  style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 104, 102, 102),
                minRadius: 60.0,
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(profileData["img"]),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: SizedBox(
              width: 370,
              height: 150,
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Detalles del Admin",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                          "Tecnologo en sistemas - Tecnologo en Electronica"),
                      const Text("Ingeniero Electronico."),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                          "No tiene sentido del color o algo que se le acerque..."),
                      const Text("Hace lo que puede."),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
