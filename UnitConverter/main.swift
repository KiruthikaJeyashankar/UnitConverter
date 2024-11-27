//
//  main.swift
//  UnitConverter
//
//  Created by Kiruthika Jeyashankar on 27/11/24.
//

import Foundation

print("Hello, World!")

var greeting = "Welcome to the Unit Converter!"

print(greeting)

print("Enter something:")
if let input = readLine() {
    print("You entered: \(input)")
} else {
    print("No input detected.")
}


performTask()




var repeatOption = true

func performTask(){
    repeat {
        print("""
              Please choose an option:
              1. Convert kilometers to miles
              2. Convert Celsius to Fahrenheit
              3. Exit
              """)

        print("Enter your choice: ")
        let choice = readLine()

        switch choice! {
        case "1":
            print("Enter the distance in kilometers: ")
            let input = readLine()
            print("\(input!) kilometres is equal to \(convertKilometeresToMiles(Int(input!)!)) miles")
        case "2":
            print("Enter the temperature in Celsius: ")
            let input = readLine()
            print("\(input!) Celsius is equal to \(celsiusToFahrenHeit(Double(input!)!)) fahrenHeit")
        default:
            print("Invalid choice provided!")
        }

        print("Do you want to convert another unit? (yes/no): ")
        let userInputForRepeatOption = readLine()
        if(userInputForRepeatOption == "yes"){
            repeatOption = true
        }
        else {
            repeatOption = false
        }
    }while(repeatOption == true)
}


func convertKilometeresToMiles(_ kilometres: Int) -> Double {
    Double(kilometres)*0.621371
}

func celsiusToFahrenHeit(_ celsius:Double) -> Double {
    celsius*33.8
}

