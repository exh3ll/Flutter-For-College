class EmployeeModel {
  final String employeeId;
  final String fullName;
  final String gender;
  final String department;

  EmployeeModel({
    String? employeeId,
    required this.fullName,
    required this.gender,
    required this.department,
  }) : employeeId = employeeId ?? _generateId();

  static String _generateId() {
    return 'EMP${DateTime.now().millisecondsSinceEpoch}';
  }
}

// Global in-memory list of employees
List<EmployeeModel> employees = <EmployeeModel>[];
