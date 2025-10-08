// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academic_material_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademicMaterialDetailsDto _$AcademicMaterialDetailsDtoFromJson(
  Map<String, dynamic> json,
) => AcademicMaterialDetailsDto(
  materialType: json['materialType'] as String,
  courseCode: json['courseCode'] as String?,
  semester: json['semester'] as String?,
  instructor: json['instructor'] as String?,
  condition: json['condition'] as String?,
  title: json['title'] as String? ?? '',
);

Map<String, dynamic> _$AcademicMaterialDetailsDtoToJson(
  AcademicMaterialDetailsDto instance,
) => <String, dynamic>{
  'materialType': instance.materialType,
  'courseCode': instance.courseCode,
  'semester': instance.semester,
  'instructor': instance.instructor,
  'condition': instance.condition,
  'title': instance.title,
};
