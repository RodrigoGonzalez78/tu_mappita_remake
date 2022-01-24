import 'dart:convert';

InfoDate infoDateFromJson(String str) => InfoDate.fromJson(json.decode(str));

String infoDateToJson(InfoDate data) => json.encode(data.toJson());

class InfoDate {
  InfoDate({
    required this.title,
    required this.description,
  });

  String title;
  String description;

  factory InfoDate.fromJson(Map<String, dynamic> json) => InfoDate(
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
      };
}
