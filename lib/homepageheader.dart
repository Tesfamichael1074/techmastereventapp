import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:techmasterevent/screens/allProjects.dart';

class HomepageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 55.0.h,
          width: 75.0.w,
          decoration: BoxDecoration(
              color: Color(0xFFFAD4B2),
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(20.0.w))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 6.0.w,
                  height: 6.0.w,
                  margin: EdgeInsets.only(left: 5.0.w, top: 15.0.w),
                  child: Image.asset("assets/menu.png")),
              Spacer(),
              Container(
                  width: 50.0.w,
                  margin: EdgeInsets.only(left: 5.0.w, top: 5.0.w),
                  child: Image.asset("assets/logo.png")),
              Container(
                  width: 60.0.w,
                  margin: EdgeInsets.only(left: 8.0.w, top: 2.0.w),
                  child: Text(
                    "The world awaits your projects! \nBe creative! \nProject beyond the limits!",
                    style: GoogleFonts.montserrat(
                        fontSize: 10.0.sp,
                        color: Color(0XFF434242),
                        fontWeight: FontWeight.w300),
                  )),
              Spacer(),
              Spacer(),
              Spacer(),
            ],
          ),
        ),
        Container(
          height: 50.0.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 25.0.w,
                height: 12.0.w,
                child: Center(
                  child: Container(
                    width: 12.0.w,
                    height: 12.0.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.1),
                              blurRadius: 5,
                              spreadRadius: 2,
                              offset: Offset(0, 4)),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/bulb.png"),
                    ),
                  ),
                ),
              ),
              Container(
                width: 25.0.w,
                height: 12.0.w,
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllProjectsPage()));
                    },
                    child: Container(
                      width: 12.0.w,
                      height: 12.0.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(.1),
                                blurRadius: 5,
                                spreadRadius: 2,
                                offset: Offset(0, 4)),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/geer.png"),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 25.0.w,
                height: 12.0.w,
                child: Center(
                  child: Container(
                    width: 12.0.w,
                    height: 12.0.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.1),
                              blurRadius: 5,
                              spreadRadius: 2,
                              offset: Offset(0, 4)),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/phone.png"),
                    ),
                  ),
                ),
              ),
              Container(
                width: 25.0.w,
                height: 12.0.w,
                child: Center(
                  child: Container(
                    width: 12.0.w,
                    height: 12.0.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.1),
                              blurRadius: 5,
                              spreadRadius: 2,
                              offset: Offset(0, 4)),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/signin.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
