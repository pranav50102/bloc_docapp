import 'package:flutter/material.dart';
import 'package:task_appointments/Api/apiService.dart';
import 'package:task_appointments/models/modelsInput.dart';

class Apicall extends StatefulWidget {
  const Apicall({super.key});

  @override
  State<Apicall> createState() => _ApicallState();
}

class _ApicallState extends State<Apicall> {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField()
          ],
        ),
      ),
    );
  }
}
