import 'package:techmasterevent/model/authorModel.dart';

class ProjecetSlug {
  int id;
  String name;
  double score;
  String slug;
  String shortDescription;
  String description;
  String imagepath;
  AuthorModel author;

  ProjecetSlug(this.id, this.name, this.score, this.shortDescription, this.description, this.author, this.imagepath, this.slug);

  ProjecetSlug.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        description = json["description"],
        shortDescription = json["shortDescription"],
        score = double.parse(json["score"].toString()),
        author = AuthorModel.fromJson(json["author"] ?? {}),
        slug = json["slug"];
}
