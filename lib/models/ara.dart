import 'package:json_annotation/json_annotation.dart';

part 'ara.g.dart';

@JsonSerializable()
class Ara {
  String? official;
  String? common;

  Ara({
    this.official,
    this.common,
  });

  factory Ara.fromJson(Map<String, dynamic> json) => _$AraFromJson(json);

  Map<String, dynamic> toJson() => _$AraToJson(this);
}
