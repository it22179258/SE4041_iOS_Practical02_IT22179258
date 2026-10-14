import Foundation

// Part A: for-in & enumerated()
let names = ["Amal", "Nimali", "Ruwan"]
for (index, name) in names.enumerated() {
    print("\(index): \(name)")
}

// Part B: while loop
var balance = 1000
var week = 0
while balance > 0 {
    balance -= 300
    week += 1
}
print("Ran out in week \(week)")

// Part C: repeat-while loop
var attempts = 0
repeat {
    attempts += 1
    print("Attempt \(attempts)")
} while attempts < 3

print("\n--- Activity 6 ---")
let testMarks = [72, -1, 55, 43, 90, 88]

for mark in testMarks {
    if mark < 0 {
        continue // Skip negative marks
    }
    if mark == 90 {
        break // Stop processing entirely
    }
    print("Valid mark processed: \(mark)")
}