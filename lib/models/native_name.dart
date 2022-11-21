import 'package:json_annotation/json_annotation.dart';
import 'package:siejkowska_m_task/models/ara.dart';

part 'native_name.g.dart';

@JsonSerializable()
class NativeName {
  Ara? ara;

  NativeName({
    this.ara,
  });

  factory NativeName.fromJson(Map<String, dynamic> json) =>
      _$NativeNameFromJson(json);

  Map<String, dynamic> toJson() => _$NativeNameToJson(this);
}
