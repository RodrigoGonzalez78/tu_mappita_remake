import 'dart:convert';

PlaceDate placeDateFromJson(String str) => PlaceDate.fromJson(json.decode(str));

String placeDateToJson(PlaceDate data) => json.encode(data.toJson());

class PlaceDate {
  PlaceDate({
    required this.title,
    required this.description,
    required this.imageLink,
    required this.mapsLink,
  });

  String title;
  String description;
  String imageLink;
  String mapsLink;

  factory PlaceDate.fromJson(Map<String, dynamic> json) => PlaceDate(
        title: json["title"],
        description: json["description"],
        imageLink: json["imageLink"],
        mapsLink: json["mapsLink"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "imageLink": imageLink,
        "mapsLink": mapsLink,
      };
}
