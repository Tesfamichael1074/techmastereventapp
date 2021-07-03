import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:techmasterevent/model/projectsModel.dart';
import 'package:techmasterevent/projectCard.dart';
import 'package:sizer/sizer.dart';
import 'package:techmasterevent/provider/projectProvider.dart';
import 'package:techmasterevent/reusable/customSizedBox.dart';
import 'package:techmasterevent/services/projectsService.dart';

class ProjectsList extends StatefulWidget {
  @override
  _ProjectsListState createState() => _ProjectsListState();
}

class _ProjectsListState extends State<ProjectsList> {
  @override
  void initState() {
    super.initState();
    Provider.of<ProjectProvider>(context, listen: false).fetchProjects();
  }

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
              child: ChangeNotifierProvider<ProjectProvider>(
                create: (context) => ProjectProvider(),
                builder: (context, child) {
                  return child;
                },
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:
                      Provider.of<ProjectProvider>(context).projects.length,
                  itemBuilder: (ctx, index) {
                    Projects data =
                        Provider.of<ProjectProvider>(context).projects[index];
                    return InkWell(
                      onTap: () {
                        ProjectProvider pg = new ProjectProvider();
                        pg.fetchProjects();
                      },
                      child: Container(
                        width: 50.0.w,
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0.h, horizontal: 10),
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
                                      ),
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            "https://" + data.imagepath,
                                        fit: BoxFit.fill,
                                        imageBuilder: (context, imageProvider) => Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                        ),
                                            image: DecorationImage(
                                                image: imageProvider,
                                                fit: BoxFit.fitHeight,
                                                
                                                ),
                                          ),
                                        ),
                                        placeholder: (context, url) => Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error, color: Colors.red,),
                                      ),
                                    ),
                                    Container(
                                      width: 35.0.w,
                                      child: Text(
                                        data.name.toUpperCase(),
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.workSans(
                                            fontSize: 10.0.sp),
                                      ),
                                      padding: EdgeInsets.only(left: 5, top: 5),
                                    ),
                                    Container(
                                      width: 50.0.w,
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
                                            data.score.toString(),
                                            style: TextStyle(fontSize: 10.0.sp),
                                          ),
                                          Spacer(),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 45.0.w,
                                      child: Text(
                                        data.slug,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: GoogleFonts.quicksand(
                                            fontSize: 8.0.sp),
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
                                    border: Border.all(
                                        color: Colors.white, width: 3),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                          "assets/avatar.png",
                                        ))),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
