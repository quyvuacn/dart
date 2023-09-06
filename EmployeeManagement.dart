import 'Employee.dart';

class EmployeeManagement {
  List<Employee> employees = [];

  // Task 2: Add a new Employee
  void addNewEmployee(Employee employee) {
    employees.add(employee);
  }

  // Task 3: Get all Employees
  List<Employee> getAllEmployee() {
    return employees;
  }

  // Task 4: Update an Employee
  void updateEmployee(int id, Employee updatedEmployee) {
    final index = employees.indexWhere((employee) => employee.id == id);
    if (index != -1) {
      employees[index] = updatedEmployee;
    }
  }

  // Task 5: Show all Employees
  void showAllEmployee() {
    for (var employee in employees) {
      print('ID: ${employee.id}');
      print('Full Name: ${employee.fullName}');
      print('Birthday: ${employee.birthday}');
      print('Address: ${employee.address}');
      print('Phone Number: ${employee.phoneNumber}');
      print('------------');
    }
  }
}