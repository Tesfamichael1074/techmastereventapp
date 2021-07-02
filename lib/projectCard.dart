import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProjectCard extends StatefulWidget {
  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0.h,
      width: 40.0.w,
       color: Colors.red,
       margin: EdgeInsets.all(10),
    );
  }
}