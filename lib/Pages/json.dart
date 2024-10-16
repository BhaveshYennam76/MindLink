// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';

List<one> temperaturesFromJson(String str) => List<one>.from(json.decode(str).map((x) => one.fromJson(x)));

String temperaturesToJson(List<one> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class one {
  String text;
  String text2;
  String text3;
  String images;
  String images2;

  one({
    required this.text,
    required this.text2,
    required this.text3,
    required this.images,
    required this.images2,
  });

  factory one.fromJson(Map<String, dynamic> json) => one(
    text: json["Text"],
    text2: json["Text2"],
    text3: json["Text3"],
    images: json["images"],
    images2: json["images2"],
  );

  Map<String, dynamic> toJson() => {
    "Text": text,
    "Text2": text2,
    "Text3": text3,
    "images": images,
    "images2": images2,
  };
}
