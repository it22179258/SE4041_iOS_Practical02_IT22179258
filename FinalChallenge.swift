import Foundation

// Part A: Store Student Marks
var studentMarks: [String: Int] = [
    "Amal": 72,
    "Nimali": 45,
    "Ruwan": 68,
    "Sanduni": 90,
    "Kasun": 38
]

// Part D: Passed Students Array
var passedStudents: [String] = []

// Part E: Unique Grades Set
var gradesAwarded: Set<String> = []

// Additional Challenge Counters
var passCount = 0
var failCount = 0

// Part C: Grade calculation helper using ranges
func gradeFor(mark: Int) -> String {
    switch mark {
    case 80...100:
        return "A"
    case 75..<80:
        return "A-"
    case 70..<75:
        return "B+"
    case 65..<70:
        return "B"
    case 60..<65:
        return "B-"
    case 55..<60:
        return "C+"
    case 45..<55:
        return "C"
    case 40..<45:
        return "C-"
    case 0..<40:
        return "F"
    default:
        return "Invalid"
    }
}

print("==================================")
print("      STUDENT PERFORMANCE")
print("==================================")
print()

// Part B & C: Display students sorted alphabetically
let sortedStudentNames = studentMarks.keys.sorted()

for name in sortedStudentNames {
    let mark = studentMarks[name]!
    let grade = gradeFor(mark: mark)
    
    // Add unique grade to Set
    gradesAwarded.insert(grade)
    
    // Track passes & fails
    if mark >= 50 {
        passedStudents.append(name)
        passCount += 1
    } else {
        failCount += 1
    }
    
    print("\(name) - \(mark) - \(grade)")
}

print()
print("----------------------------------")
print()

// Part D Display
print("Passed Students:")
for student in passedStudents {
    print(student)
}

print()
print("----------------------------------")
print()

// Part E Display
print("Grades Awarded:")
for grade in gradesAwarded.sorted() {
    print(grade)
}

print()
print("----------------------------------")
print()

// Part F & G: Statistical summary
let allMarks = Array(studentMarks.values)
let totalMarks = allMarks.reduce(0, +)
let averageMark = Double(totalMarks) / Double(studentMarks.count)

let highestMark = allMarks.max() ?? 0
let lowestMark = allMarks.min() ?? 0

print(String(format: "Class Average: %.1f", averageMark))
print("Highest Mark: \(highestMark)")
print("Lowest Mark: \(lowestMark)")

print()
print("----------------------------------")
print("Additional Challenge Stats:")
print("Passed: \(passCount)")
print("Failed: \(failCount)")

// Optional Search Demonstration
let searchName = "Amal"
print()
if let foundMark = studentMarks[searchName] {
    print("Search: \(searchName)'s mark is \(foundMark)")
} else {
    print("Search: Student not found")
}