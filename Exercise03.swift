import Foundation

// Steps 1 to 5 - Dictionary Fundamentals
var marks = [
    "Amal": 72,
    "Nimali": 65,
    "Ruwan": 48
]
print("Dictionary:", marks)

// Access returns Optional
print("Raw lookup:", marks["Amal"] as Any)
print("Nil-coalesced lookup:", marks["Amal"] ?? 0)
print("Non-existent key lookup:", marks["Kasun"] ?? 0)

// Optional Binding
if let mark = marks["Nimali"] {
    print("Nimali scored \(mark)")
} else {
    print("Student not found")
}

// Add, Update, Remove
marks["Sanduni"] = 90
marks["Amal"] = 75
marks["Ruwan"] = nil
print("Updated Dictionary:", marks)

print("\n--- Activity 3: Phone Book ---")
var phoneBook = [
    "Amal": "0771234567",
    "Nimali": "0719876543",
    "Ruwan": "0755554433",
    "Sanduni": "0781122334"
]

// 1. Add new contact
phoneBook["Kasun"] = "0723344556"

// 2. Update existing contact
phoneBook["Amal"] = "0779998877"

// 3. Remove contact
phoneBook["Ruwan"] = nil

// 4 & 5. Safe search using if-let
let queryName = "Nimali"
if let number = phoneBook[queryName] {
    print("\(queryName)'s phone number is: \(number)")
} else {
    print("Contact not found")
}

let missingName = "Saman"
if let number = phoneBook[missingName] {
    print("\(missingName)'s phone number is: \(number)")
} else {
    print("Contact not found")
}