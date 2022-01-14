import 'package:flutter/material.dart';

class ActionsPage extends StatelessWidget {
  const ActionsPage({Key? key, required this.backHandler}) : super(key: key);
  final void Function()? backHandler;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          TextButton(onPressed: backHandler, child: const Icon(Icons.arrow_back)),
          const Text("ActionsPage"),
        ],
      )),
    );
  }
}
