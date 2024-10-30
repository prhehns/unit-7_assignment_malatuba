import 'package:unit_7_assignment_malatuba/components/tab_widget_1.dart';
import 'package:unit_7_assignment_malatuba/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  final List<Widget> _tabItems = [
    const Tab(icon: Icon(Icons.adb), text: "tab 1",),
    const Tab(icon: Icon(Icons.add_alert), text: "tab 2",),
  ];
  final List<Widget> _tabScreens = [const TabWidget1(), const TabWidget2()];

  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView
    return DefaultTabController(
      length: _tabItems.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Example tab bar navigation"),
          bottom: TabBar(tabs: _tabItems),
        ),
        body: TabBarView(children: _tabScreens),
      ),
    );
  }
}
