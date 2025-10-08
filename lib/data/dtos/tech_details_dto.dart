import 'package:json_annotation/json_annotation.dart';

part 'tech_details_dto.g.dart';

@JsonSerializable()
class TechDetailsDto {
  final String brand;
  final String model;
  final String? condition;
  final Map<String, String>? specs;
  final String? warranty;

  TechDetailsDto({
    required this.brand,
    required this.model,
    this.condition,
    this.specs,
    this.warranty,
  });

  factory TechDetailsDto.fromJson(Map<String, dynamic> json) => _$TechDetailsDtoFromJson(json);
  Map<String, dynamic> toJson() => _$TechDetailsDtoToJson(this);
}
