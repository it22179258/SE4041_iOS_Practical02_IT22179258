import Foundation

// Step 1 - Create an Array
var marks = [72, 65, 48, 90, 55]
print("Initial marks:", marks)

// Step 2 - Access Elements (0-indexed)
print("First mark (index 0):", marks[0])
print("Third mark (index 2):", marks[2])
print("Fifth mark (index 4):", marks[4])

// Step 3 - Useful Properties
print("Count:", marks.count)
print("Is empty:", marks.isEmpty)
print("First element (optional):", marks.first ?? 0)
print("Last element (optional):", marks.last ?? 0)

// Step 4 - Modify Array
marks[2] = 52
marks.append(88)
marks.insert(60, at: 1)
print("After updates and inserts:", marks)

marks.removeLast()
marks.remove(at: 1)
print("After removals:", marks)

// Step 5 - Array Methods & Calculations
let fixedMarks = [72, 65, 48, 90, 55]
print("Max mark:", fixedMarks.max()!)
print("Min mark:", fixedMarks.min()!)
print("Contains 90?:", fixedMarks.contains(90))
print("Sorted ascending:", fixedMarks.sorted())
print("Sorted descending:", fixedMarks.sorted(by: >))

let total = fixedMarks.reduce(0, +)
let average = Double(total) / Double(fixedMarks.count)
print("Total:", total)
print("Average:", average)

print("\n--- Activity 1 ---")
// Activity 1: Modules Array
var modules = ["SE4041", "SE4010", "IE3020", "SE4022", "CS4011"]

print("All modules:", modules)
print("First module:", modules.first ?? "None")
print("Last module:", modules.last ?? "None")

modules.append("SE4090")
print("Total number of modules:", modules.count)
print("Contains SE4041?:", modules.contains("SE4041"))