import 'package:json_annotation/json_annotation.dart';

part 'flags.g.dart';

@JsonSerializable()
class Flags {
  String? png;
  String? svg;

  Flags({this.png, this.svg});
  factory Flags.fromJson(Map<String, dynamic> json) => _$FlagsFromJson(json);

  Map<String, dynamic> toJson() => _$FlagsToJson(this);
}
