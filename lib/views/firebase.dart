import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FirstFirebase extends StatelessWidget {
  const FirstFirebase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }

  void callDatabase() {
    //FirebaseDatabase database = FirebaseDatabase.instance;

    // DatabaseReference starCountRef =
    //     FirebaseDatabase.instance.ref('/Registros/');
    // starCountRef.onValue.listen((event) {
    //   final data = event.snapshot.value;
    //   print(data.toString());
    // });

    //FirebaseConnection().fetchAll();

    // final reg = FirebaseDatabase.instance.ref();
    // final obj = reg.child('/Registros/2345610').get();
    // print(obj);
  }
}
