import Foundation

func evaluateAttendance(attendance: Int) {
    if attendance >= 90 {
        print("Attendance: \(attendance)% -> Excellent attendance")
    } else if attendance >= 80 {
        print("Attendance: \(attendance)% -> Good attendance")
    } else if attendance >= 70 {
        print("Attendance: \(attendance)% -> Acceptable attendance")
    } else {
        print("Attendance: \(attendance)% -> Low attendance")
    }
}

// Activity 4: Testing multiple values
evaluateAttendance(attendance: 94)
evaluateAttendance(attendance: 83)
evaluateAttendance(attendance: 78)
evaluateAttendance(attendance: 62)