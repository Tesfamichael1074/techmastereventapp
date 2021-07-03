


import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:techmasterevent/model/projectsModel.dart';
import 'package:techmasterevent/model/slugModel.dart';
import 'package:techmasterevent/services/projectsService.dart';

/// This is provider from tesfa
class ProjectProvider extends ChangeNotifier {

  List<Projects> projects = [];
  ProjecetSlug projectSlug;

  ProjectsService pg = new ProjectsService();

  Future<void> fetchProjects() async {
      projects = await pg.getProjects();
      print(projects.length);
      notifyListeners();
  }


  Future<void> fetchProjectSlug(String slug) async {
      projectSlug = await pg.getProjectSlug(slug);
      print(projectSlug);
      notifyListeners();
  }


}