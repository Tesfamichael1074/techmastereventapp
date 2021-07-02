import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer_util.dart';
import 'package:sizer/sizer.dart';
import 'package:techmasterevent/homePge.dart';

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
