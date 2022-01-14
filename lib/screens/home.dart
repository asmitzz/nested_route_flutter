import 'package:flutter/material.dart';
import 'package:nested_route_flutter/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(routeNestedRouteExample);
          },
          child: const Text("Nested route example"),
        ),
      ),
    );
  }
}
