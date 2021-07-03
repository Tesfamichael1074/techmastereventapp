import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techmasterevent/provider/projectProvider.dart';

class ProjectSlugPage extends StatefulWidget {

  final String slug;

  ProjectSlugPage({this.slug});

  @override
  _ProjectSlugPageState createState() => _ProjectSlugPageState();
}

class _ProjectSlugPageState extends State<ProjectSlugPage> {
  @override
  void initState() { 
    super.initState();
    Provider.of<ProjectProvider>(context, listen: false).fetchProjectSlug(widget.slug);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: null,
    );
  }
}