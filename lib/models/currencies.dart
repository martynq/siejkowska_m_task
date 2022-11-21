import 'package:json_annotation/json_annotation.dart';
import 'package:siejkowska_m_task/models/mru.dart';

part 'currencies.g.dart';

@JsonSerializable()
class Currencies {
  @JsonKey(name: "mRU")
  final MRU? mRU;

  Currencies({
    this.mRU,
  });

  factory Currencies.fromJson(Map<String, dynamic> json) =>
      _$CurrenciesFromJson(json);

  Map<String, dynamic> toJson() => _$CurrenciesToJson(this);
}
