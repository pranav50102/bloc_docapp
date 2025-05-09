import 'package:flutter/material.dart';

class Listv extends StatefulWidget {
  const Listv({super.key});

  @override
  State<Listv> createState() => _ListvState();
}

class _ListvState extends State<Listv> {

  List<String> _list = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: ListView.builder(
            itemCount: _list.length,
              itemBuilder: (BuildContext context, int index){
              return Card(
                child: Text(_list[index]),
              );
              }
          ),
        )
    );
  }
}
