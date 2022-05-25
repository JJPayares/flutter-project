import 'package:flutter/material.dart';

class DinamicContador extends StatefulWidget {
  const DinamicContador({Key? key}) : super(key: key);

  @override
  State<DinamicContador> createState() => _DinamicContadorState();
}

class _DinamicContadorState extends State<DinamicContador> {
  int counter = 0;
  void buttonActions() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const sizeText = TextStyle(fontSize: 25);

    return Scaffold(
      appBar: AppBar(
        elevation: 8.0,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text('New Dinamic Counter'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button',
            style: sizeText,
          ),
          Text(
            '$counter times',
            style: sizeText,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          buttonActions();
          print(counter);
        },
      ),
    );
  }
}
