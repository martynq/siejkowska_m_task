import 'package:json_annotation/json_annotation.dart';
import 'package:siejkowska_m_task/models/native_name.dart';

part 'name.g.dart';

@JsonSerializable()
class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({this.common, this.official, this.nativeName});

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

  Map<String, dynamic> toJson() => _$NameToJson(this);
}
