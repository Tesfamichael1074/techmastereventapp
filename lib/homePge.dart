import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:techmasterevent/reusable/customSizedBox.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.0.h,
          width: 100.0.w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 55.0.h,
                      width: 75.0.w,
                      decoration: BoxDecoration(
                          color: Color(0xFFFAD4B2),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20.0.w))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          17.h,
                          Container(
                              width: 6.0.w,
                              height: 6.0.w,
                              margin: EdgeInsets.only(left: 5.0.w, top: 5.0.w),
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
                                  fontWeight: FontWeight.w300
                                ),
                              )),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                        ],
                      ),
                    ),

                    Container(
                      height: 55.0.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          1.h,
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
                                        offset: Offset(0,4)
                                      ),
                                    ]
                                  ),
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
                                        offset: Offset(0,4)
                                      ),
                                    ]
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("assets/geer.png"),
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
                                        offset: Offset(0,4)
                                      ),
                                    ]
                                  ),
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
                                        offset: Offset(0,4)
                                      ),
                                    ]
                                  ),
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
                ),



                Container(
                  width: 100.0.w,
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.0.w,
                    vertical: 2.0.h
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70.0.w,
                        height: 6.0.h,
                        child: TextFormField(
                          
                          decoration: InputDecoration(
                            labelText: "Search",
                            prefixIcon: Icon(Icons.search, color: Color(0xFFFAD4B2)),
                            contentPadding: EdgeInsets.symmetric(
                                    vertical: 0,
                                    horizontal: 7.0.w
                                  ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0.w),
                              borderSide: BorderSide(color: Color(0xFFFAD4B2))
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0.w),
                              borderSide: BorderSide(color: Colors.amber)
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0.w),
                              borderSide: BorderSide(color: Colors.white)
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}
