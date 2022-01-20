import 'dart:convert';

GeneralDate generalDateFromJson(String str) =>
    GeneralDate.fromJson(json.decode(str));

String generalDateToJson(GeneralDate data) => json.encode(data.toJson());

class GeneralDate {
  GeneralDate({
    required this.name,
    required this.phoneNumber,
    required this.description,
    required this.imageLink,
    required this.instagramLink,
    required this.facebookLink,
    required this.mapsLink,
  });

  final String name;
  final int phoneNumber;
  final String description;
  final String imageLink;
  final String instagramLink;
  final String facebookLink;
  final String mapsLink;

  factory GeneralDate.fromJson(Map<dynamic, dynamic> json) => GeneralDate(
        name: json["name"],
        phoneNumber: json["phoneNumber"],
        description: json["description"],
        imageLink: json["imageLink"],
        instagramLink: json["instagramLink"],
        facebookLink: json["facebookLink"],
        mapsLink: json["mapsLink"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "phoneNumber": phoneNumber,
        "description": description,
        "imageLink": imageLink,
        "instagramLink": instagramLink,
        "facebookLink": facebookLink,
        "mapsLink": mapsLink,
      };
}
