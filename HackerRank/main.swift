//
//  main.swift
//  HackerRank
//
//  Created by aBoelghet  on 09/09/2023.
//

import Foundation

//func plusMinus(arr: [Int]) -> Void {
//    var plusCount:Float = 0
//    var minceCount:Float = 0
//    var zerosCount:Float = 0
//    for i in arr{
//        if i == 0{
//            zerosCount += 1
//        }else if i > 0{
//            plusCount += 1
//        }else if i < 0{
//            minceCount += 1
//        }
//    }
//    print(Float(plusCount/Float(arr.count)))
//    print(Float(minceCount/Float(arr.count)))
//    print(Float(zerosCount/Float(arr.count)))
//
//    let plusStr = String(format: "%.6f", plusCount/Float(arr.count))
//    let minceStr = String(format: "%.6f", minceCount/Float(arr.count))
//    let zerosStr = String(format: "%.6f", zerosCount/Float(arr.count))
//
//
//}
//
//
//plusMinus(arr:[-4,3,-9,0,1])
//
//func miniMaxSum(arr: [Int]) -> Void {
//    var maxSum = 0
//    var minSum = 0
//    var minItem = arr[0]
//    var maxItem = arr[0]
//    for i in arr{
//        if i > maxItem{
//            maxItem = i
//        }
//        if i < minItem{
//            minItem = i
//        }
//        maxSum += i
//        minSum += i
//    }
//    print("\(maxSum - maxItem)"  + " " + "\(minSum - minItem)")
//
//
//}
//
//miniMaxSum(arr: [1,3,5,7,9])



func timeConversion(s: String) -> String {

    let dateString = s

    var hour = 0
    var minute = 0
    var second = 0
    var hourString = ""
    var minuteString = ""
    var secondString = ""
    
    // Create a date formatter
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa" // This format matches the input string

    // Parse the string into a Date object
    if let date = dateFormatter.date(from: dateString) {
        // Create a calendar instance to extract date components
        let calendar = Calendar.current

        // Extract date components
        let components = calendar.dateComponents([.hour, .minute, .second], from: date)

        // Access the individual components
        hour = components.hour ?? 0
         
        minute = components.minute ?? 0
        second = components.second ?? 0
        if hour < 10 {
            hourString = "0" + "\(hour)"
        }else{
            hourString = "\(hour)"
        }
        if minute < 10 {
            minuteString = "0" + "\(minute)"
        }else{
            minuteString =  "\(minute)"
        }
        if second < 10 {
            secondString = "0" + "\(second)"
        }else{
            secondString = "\(second)"
        }
        return hourString + ":" + minuteString + ":" + secondString
    } else {
        return "Invalid date string"
    }

}
print(timeConversion(s: "07:05:45PM"))
