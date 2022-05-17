import 'dart:convert';

class Generico{
      Object? payload;

  Generico({this.payload});

    factory Generico.fromJson(Map<String, dynamic> json) => Generico(
         payload: json["payload"],
      );

  Map<String, dynamic> toJson() => {
        "payload": payload,
      };

  List<dynamic> jsonStringifyToList(Object? object) {
    return json.decode(jsonEncode(object).toString());
  }
}