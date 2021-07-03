


import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:techmasterevent/model/projectsModel.dart';
import 'package:techmasterevent/model/slugModel.dart';
import 'package:techmasterevent/services/dioService.dart';

class ProjectsService {
  
  DioService dio = new DioService();

  Future<List<Projects>> getProjects() async {
    try {
        Response response = await dio.dio.get("/projects");
        List<Projects> temp = [];
        for (var p in json.decode(response.data.toString())["hydra:member"]){
          temp.add(Projects.fromJson(p));
        }
        return temp;

    } catch(e) {  
    print(" =================================================== Error \n $e");
    }    
  }


  Future<ProjecetSlug> getProjectSlug(String slug) async {
    try {
        Response response = await dio.dio.get("/projects/slug/" + slug);
        print("********************");
        print(response.data);
        return ProjecetSlug.fromJson(json.decode(response.data));

    } catch(e) {  
    print(" =================================================== Error \n $e");
    }    
  }



}