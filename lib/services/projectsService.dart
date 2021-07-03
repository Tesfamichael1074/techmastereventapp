


import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:techmasterevent/model/projectsModel.dart';
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



}