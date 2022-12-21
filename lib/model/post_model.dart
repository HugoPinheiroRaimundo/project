class PostModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel(this.userId, this.id, this.title,
      this.body); // consumindo a api não precisa passar requered no construtor

  factory PostModel.fromJson(Map json) {
    // esse é o modelo que sabe construir um objeto atráves do postmodels
    return PostModel(json["userId"], json["id"], json["title"], json["body"]);
  }

  @override
  String toString() => "id: $id";
}
