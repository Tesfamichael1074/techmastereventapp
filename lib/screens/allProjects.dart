import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:techmasterevent/model/projectsModel.dart';
import 'package:techmasterevent/projectSearchBar.dart';
import 'package:techmasterevent/projects.dart';
import 'package:sizer/sizer.dart';
import 'package:techmasterevent/provider/projectProvider.dart';
import 'package:techmasterevent/reusable/customSizedBox.dart';

class AllProjectsPage extends StatefulWidget {
  @override
  _AllProjectsPageState createState() => _AllProjectsPageState();
}

class _AllProjectsPageState extends State<AllProjectsPage> {
  List<Widget> _sc = [HomePageSearchBar()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            CupertinoSliverRefreshControl(
              refreshTriggerPullDistance: 80.0,
              refreshIndicatorExtent: 60.0,
              onRefresh: () async {},
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext ctx, int index) {
                  return _sc[index];
                },
                childCount: 1,
              ),
            ),

            AllProjectView()

          ],
        ),
      ),
    );
  }
}


class AllProjectView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext ctx, int index) {
                  return AllProjectCard(project: Provider.of<ProjectProvider>(context).projects[index],);
                },
                childCount: Provider.of<ProjectProvider>(context).projects.length,
              ),
            );
  }
}

class AllProjectCard extends StatelessWidget {

  final Projects project;

  AllProjectCard({this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 2.0.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [

          CachedNetworkImage(
                  imageUrl: project.imagepath != null
                      ? "https://" + project.imagepath
                      : "https://via.placeholder.com/600/24f355",
                  imageBuilder:
                      (context, imageProvider) =>
                          Container(
                            height: 25.0.h,
                            width: 100.0.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) =>
                      Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                ),


          Container(
            height: 25.0.h,
            width: 100.0.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(.4)),
            child: null,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 17.0.h,
              width: 90.0.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black],
                  )),
              child: Container(),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 12.0.h,
              width: 100.0.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  20.w,
                  CachedNetworkImage(
                      imageUrl: project.author.avatar != null
                          ? "https://" + project.author.avatar
                          : "https://via.placeholder.com/600/24f355",
                      imageBuilder:
                          (context, imageProvider) =>
                              Container(
                                height: 12.0.w,
                                width: 12.0.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                      placeholder: (context, url) => Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) =>
                          Icon(
                        Icons.account_circle,
                        color: Colors.amber,
                      ),
                    ),


                  Container(

                  ),
                  10.w,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 48.0.w,
                        child: Text(
                          project.name ?? "",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12.0.sp
                          ),
                        ),
                      ),

                      Container(
                        width: 50.0.w,
                        child: Text(
                          "By: " + project.author.nickname ?? "Unkown",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 8.0.sp,
                            
                          ),
                        ),
                      ),
                      
                    ],
                  ),

                  Container(
                            width: 11.0.w,
                            child: Row(
                              children: [
                                5.w,
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 12.0.sp,
                                ),
                                1.w,
                                Text(
                                  project.score.toString() ?? "0",
                                  style: TextStyle(fontSize: 9.0.sp, color: Colors.white),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
