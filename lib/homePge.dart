import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techmasterevent/homepageheader.dart';
import 'package:techmasterevent/projects.dart';
import 'package:sizer/sizer.dart';
import 'dart:math' as math;
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  AnimationController _controller;
  bool rotated = false;

  @override
  void initState() { 
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 15000));
    _controller.addListener(() {
      setState(() {
              
            });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Transform.translate(
            offset: Offset(60.0.w * (_controller.value - 1 ), 0),

            child: Transform(
              transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(math.pi / 2 * (1 - _controller.value))
              ,
              child: Container(
              height: 100.0.h,
              width: 62.0.w,
              color: Color(0xFFFAD4B2),
              padding: EdgeInsets.symmetric(vertical: 20.0.h),
              child: IconButton(icon: Icon(Icons.menu), onPressed: () => _controller.reverse(),),
        ),
            ),
          ),

          Transform.translate(
            offset: Offset(60.0.w * _controller.value, 0),
            child: Transform(
              transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(-math.pi / 2 * _controller.value)
              ,
              alignment: Alignment.centerLeft,
              child: Container(
                height: 100.0.h,
                width: 100.0.w,
                child: Column(
                  children: [
                    InkWell( onTap: (){
                      _controller.forward();
                      
                    }, child: HomepageHeader()),
                    ProjectsList()
                  ],
                ),
              ),
            ),
          ),


        
          
        ],
      )
    );
  }
}

