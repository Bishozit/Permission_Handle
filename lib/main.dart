import 'package:flutter/material.dart';
import 'package:permission_handle/permission_handle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 1, 10, 9),
        appBar: AppBar(
          title: const Text("Permission handler"),
          backgroundColor: Colors.teal[900],
          centerTitle: true,
        ),
        body: const permission_Handle(),
      ),
    );
  }
}
