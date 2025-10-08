import 'package:json_annotation/json_annotation.dart';

part 'academic_material_details_dto.g.dart';

@JsonSerializable()
class AcademicMaterialDetailsDto {
  final String materialType;
  final String? courseCode;
  final String? semester;
  final String? instructor;
  final String? condition;
  final String title;

  AcademicMaterialDetailsDto({
    required this.materialType,
    this.courseCode,
    this.semester,
    this.instructor,
    this.condition,
    this.title = '',
  });

  factory AcademicMaterialDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$AcademicMaterialDetailsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AcademicMaterialDetailsDtoToJson(this);
}
