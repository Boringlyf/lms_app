import 'package:flutter/foundation.dart';

class CoursesModel {
  final String courseId;
  final String subjectName;
  // final int numOfStudents;
  final String teacherId;
  final String teacherName;

  CoursesModel(
      {required this.courseId,
      required this.subjectName,
      required this.teacherId,
      required this.teacherName});
}
