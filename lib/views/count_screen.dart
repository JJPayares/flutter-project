import 'package:flutter/material.dart';

class DinamicContador extends StatefulWidget {
  const DinamicContador({Key? key}) : super(key: key);

  @override
  State<DinamicContador> createState() => _DinamicContadorState();
}

class _DinamicContadorState extends State<DinamicContador> {
  int counter = 0;

  counterAdd1() {
    counter++;
    setState(() {});
  }

  counterRest1() {
    setState(() {
      counter--;
    });
  }

  counterSet0() {
    counter = 0;
    setState(() {});
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
      floatingActionButton: CustomFloatingButtons(
        increase: counterAdd1,
        decrease: counterRest1,
        reset: counterSet0,
      ),
    );
  }
}

class CustomFloatingButtons extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;
  const CustomFloatingButtons({
    Key? key,
    required this.increase,
    required this.decrease,
    required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => increase(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.restore),
          onPressed: () => reset(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () => decrease(),
        )
      ],
    );
  }
}
