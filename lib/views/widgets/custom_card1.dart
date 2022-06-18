import 'package:flutter/material.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1(List lista, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 2,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: const SizedBox(
          width: 370,
          height: 120,
          child: Center(
            child: Text("Card vacia"),
          ),
        ),
      ),
    );
  }
}
