import 'package:techmasterevent/model/authorModel.dart';

class Projects {
  int id;
  String name;
  double score;
  String slug;
  String imagepath;
  AuthorModel author;

  Projects(this.id, this.name, this.score, this.slug, this.imagepath, this.author);

  Projects.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        score = double.parse(json["score"].toString()),
        imagepath = json["mainImage"]["urls"][2] ?? "",
        author = AuthorModel.fromJson(json["author"] ?? {}),
        slug = json["slug"];
}
