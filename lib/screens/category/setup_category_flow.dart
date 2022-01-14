// import 'package:flutter/material.dart';
// import 'package:nested_route_flutter/routes.dart';

// class SetupCategoryFlow extends StatefulWidget {
//   static _SetupCategoryFlowState of(BuildContext context) {
//     return context.findAncestorStateOfType<_SetupCategoryFlowState>()!;
//   }

//   const SetupCategoryFlow({Key? key, required this.setupPageRoute})
//       : super(key: key);
//   final String setupPageRoute;
//   @override
//   _SetupCategoryFlowState createState() => _SetupCategoryFlowState();
// }

// class _SetupCategoryFlowState extends State<SetupCategoryFlow> {
//   final _navigatorKey = GlobalKey<NavigatorState>();
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
// }

// Route _onGenerateRoute(RouteSettings settings) {
//   late Widget page;

//   switch (settings.name) {
//     case routeCategoryStart:
//       // page = const NestedRouteExample();
//       break;
//     case routeCategoryArcade:
//       page = const Arcade();
//       break;
//     case routeCategoryAction:
//       page = const ActionsPage();
//       break;
//     case routeCategoryAdventure:
//       page = const Adventure();
//       break;
//   }

//   return MaterialPageRoute<dynamic>(
//     builder: (context) {
//       return page;
//     },
//     settings: settings,
//   );
// }
