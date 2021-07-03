class Projects {
  int id;
  String name;
  double score;
  String slug;
  String imagepath;

  Projects(this.id, this.name, this.score, this.slug, this.imagepath);

  Projects.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        score = double.parse(json["score"].toString()),
        imagepath = json["mainImage"]["urls"][2] ?? "",
        slug = json["slug"];
}
