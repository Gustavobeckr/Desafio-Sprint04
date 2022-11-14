class TodoModel {
  String? title;
  String? description;
  String? date;
  bool? keepOn;

  TodoModel({this.title, this.description, this.date, this.keepOn});

  TodoModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    date = json['date'];
    keepOn = json['keepOn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['date'] = date;
    data['keepOn'] = keepOn;
    return data;
  }
}
