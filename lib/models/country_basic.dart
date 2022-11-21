import 'package:json_annotation/json_annotation.dart';
import 'package:siejkowska_m_task/models/currencies.dart';
import 'package:siejkowska_m_task/models/languages.dart';
import 'package:siejkowska_m_task/models/name.dart';

part 'country_basic.g.dart';

@JsonSerializable()
class CountryBasic {
  @JsonKey(name: "name")
  final Name? name;
  @JsonKey(name: "capital")
  final List<String>? capital;
  @JsonKey(name: "flag")
  final String? flag;
  @JsonKey(name: "independent")
  final bool? independent;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "region")
  final String? region;
  @JsonKey(name: "subregion")
  final String? subregion;
  @JsonKey(name: "languages")
  Languages? languages;
  @JsonKey(name: "population")
  final int? population;
  @JsonKey(name: "borders")
  final List<String>? borders;
  @JsonKey(name: "currencies")
  final Currencies? currencies;

  CountryBasic({
    this.name,
    this.capital,
    this.flag,
    this.independent,
    this.status,
    this.region,
    this.subregion,
    this.languages,
    this.population,
    this.borders,
    this.currencies,
  });

  factory CountryBasic.fromJson(Map<String, dynamic> json) =>
      _$CountryBasicFromJson(json);

  Map<String, dynamic> toJson() => _$CountryBasicToJson(this);
}
