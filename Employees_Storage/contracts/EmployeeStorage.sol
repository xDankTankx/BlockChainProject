// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmployeeStorage {
    struct Employee {
        uint id;
        string name;
        string position;
        string department;
    }

    mapping(uint => Employee) public employees;
    uint public employeeCount;

    function addEmployee(string memory _name, string memory _position, string memory _department) public {
        employeeCount++;
        employees[employeeCount] = Employee(employeeCount, _name, _position, _department);
    }

    function getEmployee(uint _id) public view returns (Employee memory) {
        return employees[_id];
    }
}
