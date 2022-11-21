// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_basic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryBasic _$CountryBasicFromJson(Map<String, dynamic> json) => CountryBasic(
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      capital:
          (json['capital'] as List<dynamic>?)?.map((e) => e as String).toList(),
      flag: json['flag'] as String?,
      independent: json['independent'] as bool?,
      status: json['status'] as String?,
      region: json['region'] as String?,
      subregion: json['subregion'] as String?,
      languages: json['languages'] == null
          ? null
          : Languages.fromJson(json['languages'] as Map<String, dynamic>),
      population: json['population'] as int?,
      borders:
          (json['borders'] as List<dynamic>?)?.map((e) => e as String).toList(),
      currencies: json['currencies'] == null
          ? null
          : Currencies.fromJson(json['currencies'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CountryBasicToJson(CountryBasic instance) =>
    <String, dynamic>{
      'name': instance.name,
      'capital': instance.capital,
      'flag': instance.flag,
      'independent': instance.independent,
      'status': instance.status,
      'region': instance.region,
      'subregion': instance.subregion,
      'languages': instance.languages,
      'population': instance.population,
      'borders': instance.borders,
      'currencies': instance.currencies,
    };
