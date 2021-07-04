import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:techmasterevent/screens/allProjects.dart';

class HomepageHeader extends StatefulWidget {
  @override
  _HomepageHeaderState createState() => _HomepageHeaderState();
}

class _HomepageHeaderState extends State<HomepageHeader>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );

    _animation = new CurveTween(curve: Curves.ease).animate(_controller);
    _controller.forward();
    _controller.addListener(() {
      setState(() {
        print(_animation.value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Transform.translate(
            offset: Offset(0, -20 + _animation.value * 20),
            child: Container(
              height: 57.0.h,
              width: 75.0.w,
              decoration: BoxDecoration(
                  color: Color(0xFFFAD4B2),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(20.0.w))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.translate(
                    offset: Offset(0, -20 + _animation.value * 20),
                    child: Container(
                        width: 6.0.w,
                        height: 6.0.w,
                        margin: EdgeInsets.only(left: 5.0.w, top: 10.0.w),
                        child: Image.asset("assets/menu.png")),
                  ),
                  Spacer(),
                  Transform.translate(
                    offset: Offset(0, -20 + _animation.value * 20),
                    child: Container(
                        width: 50.0.w,
                        margin: EdgeInsets.only(left: 5.0.w, top: 5.0.w),
                        child: Image.asset("assets/logo.png")),
                  ),
                  Transform.translate(
                    offset: Offset(0, -20 + _animation.value * 20),
                    child: Container(
                        width: 60.0.w,
                        margin: EdgeInsets.only(left: 8.0.w, top: 2.0.w),
                        child: Text(
                          "The world awaits your projects! \nBe creative! \nProject beyond the limits!",
                          style: GoogleFonts.montserrat(
                              fontSize: 10.0.sp,
                              color: Color(0XFF434242),
                              fontWeight: FontWeight.w300),
                        )),
                  ),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                ],
              ),
            ),
          ),
          Container(
            height: 50.0.h,
            padding: EdgeInsets.only(top: 3.0.h),
            child: Stack(
              children: [
                Transform.translate(
                  offset: Offset(0, -20 + _animation.value * 20),
                  child: SideButton(
                    imagepath: "assets/bulb.png",
                    onpressed: () {},
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, _animation.value * 14.0.h),
                  child: SideButton(
                    imagepath: "assets/geer.png",
                    onpressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllProjectsPage()));
                    },
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, _animation.value * 27.0.h),
                  child: SideButton(
                    imagepath: "assets/phone.png",
                    onpressed: () {},
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, _animation.value * 40.0.h),
                  child: SideButton(
                    imagepath: "assets/signin.png",
                    onpressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SideButton extends StatelessWidget {
  final String imagepath;
  final Function onpressed;
  const SideButton({this.imagepath, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25.0.w,
      height: 12.0.w,
      child: Center(
        child: InkWell(
          onTap: onpressed,
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
              child: Image.asset(imagepath),
            ),
          ),
        ),
      ),
    );
  }
}
