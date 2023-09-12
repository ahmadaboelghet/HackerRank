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
//
//
//
//func timeConversion(s: String) -> String {
//
//    let dateString = s
//
//    var hour = 0
//    var minute = 0
//    var second = 0
//    var hourString = ""
//    var minuteString = ""
//    var secondString = ""
//
//    // Create a date formatter
//    let dateFormatter = DateFormatter()
//    dateFormatter.dateFormat = "hh:mm:ssa" // This format matches the input string
//
//    // Parse the string into a Date object
//    if let date = dateFormatter.date(from: dateString) {
//        // Create a calendar instance to extract date components
//        let calendar = Calendar.current
//
//        // Extract date components
//        let components = calendar.dateComponents([.hour, .minute, .second], from: date)
//
//        // Access the individual components
//        hour = components.hour ?? 0
//
//        minute = components.minute ?? 0
//        second = components.second ?? 0
//        if hour < 10 {
//            hourString = "0" + "\(hour)"
//        }else{
//            hourString = "\(hour)"
//        }
//        if minute < 10 {
//            minuteString = "0" + "\(minute)"
//        }else{
//            minuteString =  "\(minute)"
//        }
//        if second < 10 {
//            secondString = "0" + "\(second)"
//        }else{
//            secondString = "\(second)"
//        }
//        return hourString + ":" + minuteString + ":" + secondString
//    } else {
//        return "Invalid date string"
//    }
//
//}
//print(timeConversion(s: "07:05:45PM"))

//
//func findMedian(arr: [Int]) -> Int {
//
//    var sortedArr = arr.sorted()
//    let count = arr.count
//    guard count > 0 else {
//        return 0 // Return nil for an empty array
//    }
//    if count % 2 == 1 {
//        // Odd number of elements, return the middle element
//        return sortedArr[count / 2]
//
//    } else {
//        // Even number of elements, return the average of the two middle elements
//        let middle1 = sortedArr[count / 2 - 1]
//        let middle2 = sortedArr[count / 2]
//        return (middle1 + middle2) / 2
//
//    }
//}
//print(findMedian(arr: [1,2,3,4,5,6]))

//func lonelyinteger(a: [Int]) -> Int {
//
//    var result = 0
//    for i in a {
//        result ^= i
//    }
//    return result
//}
//
//print(lonelyinteger(a: [1,2,3,4,3,2,1]))

func diagonalDifference(matrix: [[Int]])-> Int {
    // Write your code here
    let n = matrix.count
    var primaryDiagonalSum = 0
    var secondaryDiagonalSum = 0
    
    for i in 0..<n {
        primaryDiagonalSum += matrix[i][i]
        secondaryDiagonalSum += matrix[i][n - 1 - i]
        return primaryDiagonalSum - secondaryDiagonalSum

    }
    
    return primaryDiagonalSum - secondaryDiagonalSum
}






print(diagonalDifference(matrix: [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]]))
// 1 2 3
// 4 5 6
// 7 8 9



