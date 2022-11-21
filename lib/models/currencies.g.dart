// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currencies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Currencies _$CurrenciesFromJson(Map<String, dynamic> json) => Currencies(
      mRU: json['mRU'] == null
          ? null
          : MRU.fromJson(json['mRU'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrenciesToJson(Currencies instance) =>
    <String, dynamic>{
      'mRU': instance.mRU,
    };
