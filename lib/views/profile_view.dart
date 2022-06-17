import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 135, 214, 139),
                minRadius: 35.0,
                child: Icon(
                  Icons.call,
                  size: 30.0,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.greenAccent,
                minRadius: 35.0,
                child: Icon(
                  Icons.message,
                  size: 30.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
