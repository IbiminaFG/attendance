// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract StudentAttendance {

    struct Student {
        string name;
        uint8 age;
        bool present;
    }

    Student[] public students;

    event StudentAdded(uint256 index, string name, uint8 age);
    event AttendanceUpdated(uint256 index, bool present);

    function addStudent(
        string calldata _name,
        uint8 _age
    ) external {
        students.push(Student(_name, _age, false));
        emit StudentAdded(students.length - 1, _name, _age);
    }

    function updateAttendance(
        uint256 index,
        bool _present
    ) external {
        require(index < students.length, "Invalid student");

        students[index].present = _present;

        emit AttendanceUpdated(index, _present);
    }

    function getStudentsCount() external view returns (uint256) {
        return students.length;
    }
}
