import 'dart:io';

import 'Employee.dart';
import 'EmployeeManagement.dart';

void main() {
  EmployeeManagement employeeManagement = EmployeeManagement();

  while (true) {
    print("Menu:");
    print("1. Add New Employee");
    print("2. Get All Employees");
    print("3. Update Employee");
    print("4. Show All Employees");
    print("5. Exit");
    stdout.write("Enter your choice (1/2/3/4/5): ");
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        var newEmployee = readEmployeeDetails();
        employeeManagement.addNewEmployee(newEmployee);
        break;
      case '2':
        employeeManagement.showAllEmployee();
        break;
      case '3':
        var id = readInt("Enter the Employee ID to update: ");
        var updatedEmployee = readEmployeeDetails();
        employeeManagement.updateEmployee(id, updatedEmployee);
        break;
      case '4':
        print("All Employee Information:");
        employeeManagement.showAllEmployee();
        break;
      case '5':
        exit(0);
      default:
        print("Invalid choice. Please select a valid option.");
    }
  }
}

Employee readEmployeeDetails() {
  var id = readInt("Enter Employee ID: ");
  var fullName = readString("Enter Employee Full Name: ");
  var birthday = readDate("Enter Employee Birthday (YYYY-MM-DD): ");
  var address = readString("Enter Employee Address: ");
  var phoneNumber = readString("Enter Employee Phone Number: ");

  return Employee(
    id: id,
    fullName: fullName,
    birthday: birthday,
    address: address,
    phoneNumber: phoneNumber,
  );
}

int readInt(String prompt) {
  stdout.write(prompt);
  var input = stdin.readLineSync();
  return int.parse(input!);
}

String readString(String prompt) {
  stdout.write(prompt);
  var input = stdin.readLineSync();
  return input!;
}

DateTime readDate(String prompt) {
  stdout.write(prompt);
  var input = stdin.readLineSync();
  return DateTime.parse(input!);
}
