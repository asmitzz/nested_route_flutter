import 'package:flutter/material.dart';

class Pubg extends StatelessWidget {
  const Pubg({Key? key, required this.backHandler}) : super(key: key);
  final void Function()? backHandler;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          TextButton(onPressed: backHandler, child: const Icon(Icons.arrow_back)),
          const Text("Pubg"),
        ],
      )),
    );
  }
}
