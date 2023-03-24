import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/register'), 
              child: const Text("Cadastrar"),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/list'), 
              child: const Text("Lista")
            ),
          ),
        ],
      ),
    );
  }
}