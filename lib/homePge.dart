import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:techmasterevent/homepageheader.dart';
import 'package:techmasterevent/projectCard.dart';
import 'package:techmasterevent/projectSearchBar.dart';
import 'package:techmasterevent/projects.dart';
import 'package:techmasterevent/provider/projectProvider.dart';
import 'package:techmasterevent/reusable/customSizedBox.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> _sc = [HomepageHeader(), ProjectsList(height: 45.0.h,)];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // height: 100.0.h,
          // width: 100.0.w,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
            slivers: [
              CupertinoSliverRefreshControl(
                refreshTriggerPullDistance: 80.0,
                refreshIndicatorExtent: 60.0,
                onRefresh: () async {
                  Provider.of<ProjectProvider>(context, listen: false).fetchProjects();
                },
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext ctx, int index) {
                    return _sc[index];
                  },
                  childCount: 2,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

