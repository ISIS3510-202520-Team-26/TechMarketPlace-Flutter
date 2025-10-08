import 'package:freezed_annotation/freezed_annotation.dart';
import '../category.dart';

part 'academic_material_details.freezed.dart';

@freezed
abstract class AcademicMaterialDetails with _$AcademicMaterialDetails {
  const AcademicMaterialDetails._();

  const factory AcademicMaterialDetails({
    required AcademicMaterialType materialType,
    String? courseCode,
    String? semester,
    String? instructor,
    String? condition, 
    String? title,
  }) = _AcademicMaterialDetails;

  factory AcademicMaterialDetails.create({
    required AcademicMaterialType materialType,
    String? courseCode,
    String? semester,
    String? instructor,
    String? condition,
    String? title,
  }) {
    return AcademicMaterialDetails(
      materialType: materialType,
      courseCode: courseCode?.trim().isEmpty == true ? null : courseCode,
      semester: semester?.trim().isEmpty == true ? null : semester,
      instructor: instructor?.trim().isEmpty == true ? null : instructor,
      condition: condition?.trim().isEmpty == true ? null : condition,
      title: title?.trim().isEmpty == true ? null : title,
    );
  }
}
