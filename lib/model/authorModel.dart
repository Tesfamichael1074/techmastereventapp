class AuthorModel {
  int id;
  String fname;
  String nickname;
  String lname;
  String avatar;
  String country;

  AuthorModel(this.id, this.fname, this.lname, this.avatar, this.country);

  AuthorModel.fromJson(Map<String, dynamic> json)
      : id = json["id"] ?? 0,
        fname = json["firstname"] ?? "",
        lname = json["score"] ?? "",
        nickname = json["nickname"] ?? "",
        avatar = json["avatar"] != null ? json["avatar"]["urls"][2] : "",
        country = json["country"] ?? "";
}
