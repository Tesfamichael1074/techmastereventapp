import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techmasterevent/projectCard.dart';
import 'package:sizer/sizer.dart';
import 'package:techmasterevent/reusable/customSizedBox.dart';

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
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                ),
                                Container(
                                  width: 35.0.w,
                                  child: Text(
                                    "Project tit less nxsnsnjxnsjnxjsnxjnsj".toUpperCase(),
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.workSans(
                                      fontSize: 10.0.sp
                                    ),
                                  ),
                                  padding: EdgeInsets.only(
                                      left: 5, top: 5),
                                ),


                                Container(
                                  width: 50.0.w,
                                    child: Row(
                                      children: [
                                        5.w,
                                        Icon(Icons.star, color: Colors.amber, size: 12.0.sp,),
                                        1.w,
                                        Text("2", style: TextStyle(fontSize: 10.0.sp),),
                                        Spacer(),

                                      ],
                                    ),
                                ),


                                Container(
                                  width: 45.0.w,
                                  child: Text(
                                    "Project tit less nde eded deimfem xsnsnj xn sjnx jsnx jns e c ecec ce  ccdcd cdcd j",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: GoogleFonts.quicksand(
                                      fontSize: 8.0.sp
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                ),

                                





                              ],
                            )),
                        Positioned(
                          top: 20.0.h - 5.0.w,
                          right: 4.0.w,
                          child: Container(
                            height: 12.0.w,
                            width: 12.0.w,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 3),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "assets/avatar.png",
                                    ))),
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
