import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _index = 0;

  List<Color> colorList = [
    Colors.black,
    Colors.amber,
    Colors.blue,
    Colors.green,
  ];

  final String _message = 'Magic Message!';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _changeColor() {
    setState(() {
      _index++;
      if (_index > colorList.length - 1) {
        _index = 0;
      }
    });
  }

  void _floatButtonActions() {
    _incrementCounter();
    _changeColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: colorList[_index]),
            ),
            Text(
              _message,
              style: TextStyle(color: colorList[_index], fontSize: 30),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _floatButtonActions,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
