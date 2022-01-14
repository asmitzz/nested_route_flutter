// import 'package:flutter/material.dart';
// import 'package:nested_route_flutter/routes.dart';
// import 'package:nested_route_flutter/screens/games/chess.dart';
// import 'package:nested_route_flutter/screens/games/cricket.dart';
// import 'package:nested_route_flutter/screens/games/pubg.dart';

// class SetupGamesFlow extends StatefulWidget {
//   static _SetupGamesFlowState of(BuildContext context) {
//     return context.findAncestorStateOfType<_SetupGamesFlowState>()!;
//   }

//   const SetupGamesFlow({Key? key, required this.setupPageRoute})
//       : super(key: key);
//   final String setupPageRoute;
//   @override
//   _SetupGamesFlowState createState() => _SetupGamesFlowState();
// }

// class _SetupGamesFlowState extends State<SetupGamesFlow> {
//   final _navigatorKey = GlobalKey<NavigatorState>();

//   void routeTo(route) {
//     _navigatorKey.currentState?.pushNamed(route);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Navigator(
//         key: _navigatorKey,
//         initialRoute: widget.setupPageRoute,
//         onGenerateRoute: _onGenerateRoute,
//       ),
//     );
//   }

//   Route _onGenerateRoute(RouteSettings settings) {
//     late Widget page;
//     switch (settings.name) {
//       case routeGamesPubg:
//         page = const Pubg();
//         break;
//       case routeGamesCricket:
//         page = const Cricket();
//         break;
//       case routeGamesChess:
//         page = const Chess();
//         break;
//     }

//     return MaterialPageRoute<dynamic>(
//       builder: (context) {
//         return page;
//       },
//       settings: settings,
//     );
//   }
// }
