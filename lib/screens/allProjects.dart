import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techmasterevent/projectSearchBar.dart';
import 'package:techmasterevent/projects.dart';
import 'package:sizer/sizer.dart';

class AllProjectsPage extends StatefulWidget {
  @override
  _AllProjectsPageState createState() => _AllProjectsPageState();
}

class _AllProjectsPageState extends State<AllProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 8.0.h,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(CupertinoIcons.arrow_left, color: Color(0xFFFAD4B2),),
                    onPressed: () {},
                  )
                ],
              ),
            ),

            HomePageSearchBar(),

            ProjectsList(
              height: 77.5.h,
            ),
          ],
        ),
      ),
    );
  }
}
