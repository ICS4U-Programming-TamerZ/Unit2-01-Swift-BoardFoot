//
//  BoardFoot.swift
//
//  Created by Tamer Zreg
//  Created on 2024-03-20
//  Version 1.0
//  Copyright (c) Tamer Zreg. All rights reserved.
//
// This program calculates the needed length of a BoardFoot in inches.
// The user provides the height and width of an object, and the program calculates the length required to make exactly 1 board foot of wood.

// Import Foundation module
import Foundation

// Function to calculate the length required for one board foot
func calculateBoardFoot(height: Float, width: Float) -> Float {
    let volume: Float = 144.0 // Volume of 1 board foot in cubic inches
    return volume / (height * width) // Calculate the length
}

// Print statements asking the user to enter the height and width of the object
print("This program calculates the needed length of a BoardFoot in inches.")
print("Please Enter the Height of Your Object: ")

// Loop until the user provides valid input for height
var userHeight: Float = 0.0
var validHeightInput = false

while !validHeightInput {
    // Prompt user for input for height
    if let userInputHeight = readLine(), let height = Float(userInputHeight), height > 0 {
        userHeight = height
        validHeightInput = true
    } else {
        // If the height input is invalid, print an error message
        print("Invalid height input. Please enter a valid number greater than 0.")
    }
}

print("Please Enter the Width of Your Object: ")

// Loop until the user provides valid input for width
var userWidth: Float = 0.0
var validWidthInput = false

while !validWidthInput {
    // Prompt user for input for width
    if let userInputWidth = readLine(), let width = Float(userInputWidth), width > 0 {
        userWidth = width
        validWidthInput = true
    } else {
        // If the width input is invalid, print an error message
        print("Invalid width input. Please enter a valid number greater than 0.")
    }
}

// Call the function to calculate the length required for one board foot
let length = calculateBoardFoot(height: userHeight, width: userWidth)
print("The needed length of a BoardFoot in inches is: \(length)")
