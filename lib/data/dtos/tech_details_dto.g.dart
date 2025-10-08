// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tech_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TechDetailsDto _$TechDetailsDtoFromJson(Map<String, dynamic> json) =>
    TechDetailsDto(
      brand: json['brand'] as String,
      model: json['model'] as String,
      condition: json['condition'] as String?,
      specs: (json['specs'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      warranty: json['warranty'] as String?,
    );

Map<String, dynamic> _$TechDetailsDtoToJson(TechDetailsDto instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'model': instance.model,
      'condition': instance.condition,
      'specs': instance.specs,
      'warranty': instance.warranty,
    };
