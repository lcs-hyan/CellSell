import Foundation
 
// Written by: Humphrey Yan
// Date: Saturday Oct 4

let daytime_A = 0.25
let daytime_B = 0.45
let evening_A = 0.15
let evening_B = 0.35
let weekend_A = 0.20
let weekend_B = 0.25
// 1. Input
 
// Get number of daytime minutes
var dayTimeMinutes = 0
var eveningMinutes = 0
var weekendMinutes = 0
while true {
    
    // Prompt
    print("Number of daytime minutes?")
    
    // Collect input
    guard let givenInput1 = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger1 = Int(givenInput1) else {
        // Repeat prompt, not an integer
        continue
    }
    
    // Now we have an integer, break input loop
    dayTimeMinutes = givenInteger1
    break
 
}

while true {
    
    // Prompt
    print("Number of evening minutes?")
    
    // Collect input
    guard let givenInput2 = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger2 = Int(givenInput2) else {
        // Repeat prompt, not an integer
        continue
    }
    
    // Now we have an integer, break input loop
    eveningMinutes = givenInteger2
    break
 
}
 
while true {
    
    // Prompt
    print("Number of weekend minutes?")
    
    // Collect input
    guard let givenInput3 = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger3 = Int(givenInput3) else {
        // Repeat prompt, not an integer
        continue
    }
    
    // Now we have an integer, break input loop
    weekendMinutes = givenInteger3
    break
 
}
// 2. Process

// Calculate costs for plan A
var a: Double = 0, b: Double = 0
 
// Add daytime cost
a += Double(dayTimeMinutes - 100) * daytime_A
b += Double(dayTimeMinutes - 250) * daytime_B
// Calculate costs for plan A and B
a += evening_A * Double(eveningMinutes)
b += evening_B * Double(eveningMinutes)

a += weekend_A * Double(weekendMinutes)
b += weekend_B * Double(weekendMinutes)
 
// 3. Output
print("Plan A costs \(a)")
print("Plan B costs \(b)")
 
if b > a {
    print("Plan A is cheapest.")
} else if a > b{
    print("Plan B is cheapest.")
}else {
    print("Their prices are the same.")
}
