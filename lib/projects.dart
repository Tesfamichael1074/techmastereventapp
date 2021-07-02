import 'package:flutter/material.dart';
import 'package:techmasterevent/projectCard.dart';
import 'package:sizer/sizer.dart';

class ProjectsList extends StatefulWidget {
  @override
  _ProjectsListState createState() => _ProjectsListState();
}

class _ProjectsListState extends State<ProjectsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0.h,
      child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
//
          SliverToBoxAdapter(
            child: Container(
              height: 45.0.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 50.0.w,
                    margin:
                        EdgeInsets.symmetric(vertical: 5.0.h, horizontal: 10),
                    child: Stack(
                      children: [
                        Card(
                            elevation: 5,
                            shape: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 50.0.w,
                                  height: 20.0.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                      ),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                            "assets/bg.jpg",
                                          ))),
                                )
                              ],
                            )),


                        Positioned(
                          top: 21.0.h - 5.0.w,
                          right: 5.0.w,
                          child: Container(
                            height: 10.0.w,
                            width: 10.0.w,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                            "assets/avatar.png",
                                          ))
                            ),
                          ),
                          )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
