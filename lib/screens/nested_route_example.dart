import 'package:flutter/material.dart';
import 'package:nested_route_flutter/screens/category/actions.dart';
import 'package:nested_route_flutter/screens/category/adventure.dart';
import 'package:nested_route_flutter/screens/category/arcade.dart';
import 'package:nested_route_flutter/screens/games/chess.dart';
import 'package:nested_route_flutter/screens/games/cricket.dart';
import 'package:nested_route_flutter/screens/games/pubg.dart';

class NestedRouteExample extends StatefulWidget {
  const NestedRouteExample({Key? key}) : super(key: key);
  @override
  _NestedRouteExampleState createState() => _NestedRouteExampleState();
}

class _NestedRouteExampleState extends State<NestedRouteExample> {
  int? _selectedTab;

  _backHandler() {
    _selectedTab = null;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Nested Route demo"),
          bottom: TabBar(
            onTap: (value) {
              setState(() {
                _selectedTab = null;
              });
            },
            tabs: const <Widget>[
              Tab(
                icon: Icon(Icons.games),
              ),
              Tab(
                icon: Icon(Icons.category),
              ),
            ],
          ),
        ),
        body: _selectedTab == null
            ? TabBarView(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                        onPressed: () {
                          _selectedTab = 0;
                          setState(() {});
                        },
                        child: const Text("Pubg")),
                    TextButton(
                        onPressed: () {
                          _selectedTab = 1;
                          setState(() {});
                        },
                        child: const Text("Cricket")),
                    TextButton(
                        onPressed: () {
                          _selectedTab = 2;
                          setState(() {});
                        },
                        child: const Text("Chess")),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                        onPressed: () {
                          _selectedTab = 3;
                          setState(() {});
                        },
                        child: const Text("Action")),
                    TextButton(
                        onPressed: () {
                          _selectedTab = 4;
                          setState(() {});
                        },
                        child: const Text("Adventure")),
                    TextButton(
                        onPressed: () {
                          _selectedTab = 5;
                          setState(() {});
                        },
                        child: const Text("Arcade")),
                  ],
                )
              ])
            : SelectedTab(
                selectedTab: _selectedTab ?? 0, backHandler: _backHandler),
      ),
    ));
  }
}

class SelectedTab extends StatefulWidget {
  const SelectedTab(
      {Key? key, required this.selectedTab, required this.backHandler})
      : super(key: key);
  final int selectedTab;
  final void Function()? backHandler;
  @override
  _SelectedTabState createState() => _SelectedTabState();
}

class _SelectedTabState extends State<SelectedTab> {
  @override
  Widget build(BuildContext context) {
    if (widget.selectedTab == 0) {
      return Pubg(backHandler: widget.backHandler);
    }
    if (widget.selectedTab == 1) {
      return Cricket(backHandler: widget.backHandler);
    }
    if (widget.selectedTab == 2) {
      return Chess(backHandler: widget.backHandler);
    }
    if (widget.selectedTab == 3) {
      return ActionsPage(backHandler: widget.backHandler);
    }
    if (widget.selectedTab == 4) {
      return Adventure(backHandler: widget.backHandler);
    }
    return Arcade(backHandler: widget.backHandler);
  }
}
