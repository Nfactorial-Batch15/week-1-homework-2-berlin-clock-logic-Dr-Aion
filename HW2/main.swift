//
//  main.swift
//  HW2
//
//  Created by Aiganym Moldagulova on 02/12/2021.
//

import Foundation

//@propertyWrapper
//struct numsBetween0and59 {
//    private var value: Int
//    init(){
//        self.value = 0
//    }
//    var wrappedValue: Int{
//        get { return value}
//        set { value = min(newValue, 59)}
//    }
//}
let time = readLine()!
let hms = time.components(separatedBy: ":")
let numHour = Int(hms[0])!
let numMinute = Int(hms[1])!
let numSecond = Int(hms[2])!
let sec = numSecond % 2 // circular reference?
let firstRowHours = numHour / 5
let secondRowHours = numHour % 5
let thirdRowMinutes = numMinute / 5
let fourthRowMinutes = numMinute % 5

func seconds(_ number: Int) -> String{
    var sec = "O"
    if(number == 0){
        sec = "Y"
        print(sec)
    } else{
        print(sec)
    }
    return sec
}

func hours(_ number: Int) -> String{
    var firstRow = ["O", "O", "O", "O"]
    if(number > 0){
        for i in 0...number - 1{
            firstRow[i] = "R"
        }
        print(firstRow.joined())
    } else{
        print(firstRow.joined())
    }
    return firstRow.joined()
}

func minutes1(_ num5MinutesBlocks: Int) -> String{
    var thirdRow = ["O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O"]
    var newThirdRow = ["O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O"]
    if(num5MinutesBlocks > 0){
        for i in 1...num5MinutesBlocks{
            if(i % 3 == 0){
                thirdRow[i] = "R"
            } else{
                thirdRow[i] = "Y"
            }
        }
        for i in 1...thirdRow.count - 1{
            newThirdRow[i - 1] = thirdRow[i]
        }
        print(newThirdRow.joined())

    } else{
        print(newThirdRow.joined())
    }
    return newThirdRow.joined()
}
func minutes2(_ num1MinuteBlocks: Int) -> String{
    var fourthRow = ["O", "O", "O", "O"]
    if(num1MinuteBlocks > 0){
        for i in 0...num1MinuteBlocks - 1{
            fourthRow[i] = "Y"
        }
        print(fourthRow.joined())
    } else{
        print(fourthRow.joined())
    }
    return fourthRow.joined()
}

let s = seconds(sec)
let h1 = hours(firstRowHours)
let h2 = hours(secondRowHours)
let m1 = minutes1(thirdRowMinutes)
let m2 = minutes2(fourthRowMinutes)
print(s + h1 + h2 + m1 + m2)
