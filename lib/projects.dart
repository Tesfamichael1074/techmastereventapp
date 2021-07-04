import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:techmasterevent/model/projectsModel.dart';
import 'package:techmasterevent/projectCard.dart';
import 'package:sizer/sizer.dart';
import 'package:techmasterevent/provider/projectProvider.dart';
import 'package:techmasterevent/reusable/customSizedBox.dart';
import 'package:techmasterevent/screens/allProjects.dart';
import 'package:techmasterevent/screens/projectSlug.dart';
import 'package:techmasterevent/services/projectsService.dart';

class ProjectsList extends StatefulWidget {
  final double height;
  ProjectsList({this.height});
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
      height: widget.height,
      child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              height: widget.height,
              child: ChangeNotifierProvider<ProjectProvider>(
                create: (context) => ProjectProvider(),
                builder: (context, child) {
                  return child;
                },
                child: ListView.builder(
                  scrollDirection:
                      widget.height == 40.0.h ? Axis.horizontal : Axis.vertical,
                  itemCount:
                      Provider.of<ProjectProvider>(context).projects.length,
                  itemBuilder: (ctx, index) {
                    Projects data =
                        Provider.of<ProjectProvider>(context).projects[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProjectSlugPage(
                              slug: data.slug,
                              project: data,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: widget.height == 40.0.h ? 60.0.w : 100.0.w,
                        margin: EdgeInsets.symmetric(
                          vertical: widget.height == 40.0.h ? 5.0.h : 1.0.h,
                          horizontal: widget.height == 40.0.h ? 10 : 5.0.w,
                        ),
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
                                      width: widget.height == 40.0.h
                                          ? widget.height
                                          : 100.0.w,
                                      height: 18.0.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                        ),
                                      ),
                                      child: CachedNetworkImage(
                                        imageUrl: data.imagepath != null
                                            ? "https://" + data.imagepath
                                            : "https://via.placeholder.com/600/24f355",
                                        imageBuilder:
                                            (context, imageProvider) =>
                                                Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              topLeft: Radius.circular(10),
                                            ),
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
                                        maxLines: 1,
                                        style: GoogleFonts.quicksand(
                                            fontSize: 8.0.sp),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                    ),
                                  ],
                                )),
                            Positioned(
                              top: 18.0.h - 5.0.w,
                              right: 4.0.w,
                              child: Hero(
                                tag: data.author.avatar,
                                child: Container(
                                  height: 12.0.w,
                                  width: 12.0.w,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.white, width: 3),
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl: "https://" + data.author.avatar,
                                    fit: BoxFit.fill,
                                    imageBuilder: (context, imageProvider) =>
                                        Container(
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
                                    errorWidget: (context, url, error) => Icon(
                                      Icons.account_circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
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
