import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizeText = TextStyle(fontSize: 30);
    int counter = 0;
    return Scaffold(
      appBar: AppBar(
        elevation: 8.0,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text('New Contador'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Number push',
            style: sizeText,
          ),
          Text(
            '$counter',
            style: sizeText,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.access_alarm),
        onPressed: () {
          counter++;
          sendText();
          print(counter);
        },
      ),
    );
  }

  void sendText() {
    print('hola');
  }
}
