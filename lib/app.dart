import 'package:flutter/material.dart';
import 'package:nested_route_flutter/routes.dart';
import 'package:nested_route_flutter/screens/home.dart';
import 'package:nested_route_flutter/screens/nested_route_example.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      onGenerateRoute: (settings) {
        late Widget page;
        if (settings.name == routeHome) {
          page = const HomePage();
        } else if (settings.name == routeNestedRouteExample) {
          page = const NestedRouteExample();
        }
        return MaterialPageRoute<dynamic>(
          builder: (context) {
            return page;
          },
          settings: settings,
        );
      },
    );
  }
}
