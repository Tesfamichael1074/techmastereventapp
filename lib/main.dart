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
                    width: 80.0.w,
                    decoration: BoxDecoration(
                        color: Color(0xFFFAD4B2),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20.0.w))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 8.0.w,
                            height: 8.0.w,
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
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
