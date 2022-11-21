import 'package:json_annotation/json_annotation.dart';

part 'mru.g.dart';

@JsonSerializable()
class MRU {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "symbol")
  final String? symbol;

  MRU({
    this.name,
    this.symbol,
  });

  factory MRU.fromJson(Map<String, dynamic> json) => _$MRUFromJson(json);

  Map<String, dynamic> toJson() => _$MRUToJson(this);
}
