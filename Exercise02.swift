import Foundation

// Steps 1 to 4 - Set Creation, Uniqueness, and Membership
var towns: Set = ["Malabe", "Kandy", "Galle"]
print("Initial towns set:", towns)

towns.insert("Jaffna")
towns.insert("Kandy") // Duplicate ignored
print("After duplicate insert:", towns)
print("Town count:", towns.count)

print("Contains Kandy?:", towns.contains("Kandy"))
print("Contains Colombo?:", towns.contains("Colombo"))

towns.remove("Galle")
print("After removing Galle:", towns)

// Step 5 - Set Operations
let swiftClass: Set = ["Amal", "Nimali", "Ruwan"]
let kotlinClass: Set = ["Nimali", "Ruwan", "Sanduni"]

print("Union:", swiftClass.union(kotlinClass).sorted())
print("Intersection:", swiftClass.intersection(kotlinClass).sorted())
print("Subtracting (Swift only):", swiftClass.subtracting(kotlinClass).sorted())
print("Symmetric Difference:", swiftClass.symmetricDifference(kotlinClass).sorted())

print("\n--- Activity 2 ---")
// Activity 2: Student Enrollment
let mobileDevelopmentStudents: Set = ["Amal", "Nimali", "Kamal", "Ruwan"]
let gameTechnologyStudents: Set = ["Nimali", "Ruwan", "Kasun", "Sanduni"]

print("All students (Union):", mobileDevelopmentStudents.union(gameTechnologyStudents).sorted())
print("Students taking both (Intersection):", mobileDevelopmentStudents.intersection(gameTechnologyStudents).sorted())
print("Students taking only Mobile Dev (Subtracting):", mobileDevelopmentStudents.subtracting(gameTechnologyStudents).sorted())
print("Students taking only one module (Symmetric Difference):", mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents).sorted())