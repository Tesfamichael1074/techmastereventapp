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

  ProjecetSlug(this.id, this.name, this.score, this.shortDescription, this.slug, this.imagepath, this.author);

  ProjecetSlug.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        description = json["description"],
        shortDescription = json["shortDescription"],
        score = double.parse(json["score"].toString()),
        imagepath = ((json["multimedia"] as List).where((element) => element["type"] == "img") as Map)["urls"][2] ?? "",
        author = AuthorModel.fromJson(json["author"] ?? {}),
        slug = json["slug"];
}
