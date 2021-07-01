import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer_util.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizerUtil().init(constraints, orientation);
            return MaterialApp(
              title: 'Astra HR ',
              debugShowCheckedModeBanner: false,
              home: HomePage(),
            );
          },
        );
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
