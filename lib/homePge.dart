import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techmasterevent/homepageheader.dart';
import 'package:techmasterevent/projects.dart';
import 'package:techmasterevent/provider/projectProvider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> _sc = [HomepageHeader(), ProjectsList()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HomepageHeader(),
            ProjectsList()
          ],
        )
      ),
    );
  }
}

