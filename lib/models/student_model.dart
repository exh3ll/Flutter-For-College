class StudentModel {
  final String fname;
  final String lname;
  final String city;

  StudentModel({required this.fname, required this.lname, required this.city});
}

// Global in-memory list of students
List<StudentModel> students = <StudentModel>[];
