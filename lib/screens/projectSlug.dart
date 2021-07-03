import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:provider/provider.dart';
import 'package:techmasterevent/model/projectsModel.dart';
import 'package:techmasterevent/model/slugModel.dart';
import 'package:techmasterevent/provider/projectProvider.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_html/flutter_html.dart';

class ProjectSlugPage extends StatefulWidget {
  final String slug;
  final Projects project;

  ProjectSlugPage({this.slug, this.project});

  @override
  _ProjectSlugPageState createState() => _ProjectSlugPageState();
}

class _ProjectSlugPageState extends State<ProjectSlugPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<ProjectProvider>(context, listen: false)
        .fetchProjectSlug(widget.slug);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: ChangeNotifierProvider<ProjectProvider>(
        create: (context) => ProjectProvider(),
        builder: (ctx, snapshot) {
          // return  html(Provider.of<ProjectProvider>(context).projectSlug);
          return Container(
            height: 100.0.h,
            child: Container(
              width: 100.0.w,
              height: 100.0.h,
              child: CustomScrollView(
                  physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
                  slivers: [
                    CupertinoSliverRefreshControl(
                      refreshTriggerPullDistance: 80.0,
                      refreshIndicatorExtent: 60.0,
                      onRefresh: () async {
                      },
                    ),
                    SliverAppBar(
                      floating: true,
                      leading: Container(),
                      actions: [],
                      stretch: true,
                      expandedHeight: 30.0.h,
                      backgroundColor: Colors.transparent,
                      flexibleSpace: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 8.5.w),
                            child: CachedNetworkImage(
                                imageUrl: widget.project.imagepath != null
                                    ? "https://" + widget.project.imagepath
                                    : "https://via.placeholder.com/600/24f355",
                                imageBuilder: (ctx, imageProvider) => Container(
                                  decoration: BoxDecoration(
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
                                  Icons.error,
                                  color: Colors.red,
                                ),
                              ),
                          ),

                        Positioned(
                              top: 30.0.h - 17.0.w,
                              right: 4.0.w,
                              child: Hero(
                                tag: widget.project.author.avatar,
                                child: Container(
                                  height: 17.0.w,
                                  width: 17.0.w,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.white, width: 3),
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl: "https://" + widget.project.author.avatar,
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
                     SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext ctx, int index) {
                          return  Provider.of<ProjectProvider>(context).projectSlug == null ?
                                  Center(child: CircularProgressIndicator(),)
                                  : Html(
                                data:  Provider.of<ProjectProvider>(context).projectSlug.description,
                              );
                        },
                        childCount: 1,
                      ),
                    ),

                  ],
                )
            ),
          );
        }
      ),
    ));
  }


  Widget html( ProjecetSlug pr){
    return pr != null ? Text(pr.toString()) : Text("No data");
  }
}


// class ProjectdescContent extends StatelessWidget {
//   const ProjectdescContent({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: null,
//     );
//   }
// }

