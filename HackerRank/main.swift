//
//  main.swift
//  HackerRank
//
//  Created by aBoelghet  on 09/09/2023.
//

import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    var maxSum = 0
    var minSum = 0
    var minItem = arr[0]
    var maxItem = arr[0]
    for i in arr{
        if i > maxItem{
            maxItem = i
        }
        if i < minItem{
            minItem = i
        }
        maxSum += i
        minSum += i
    }
    print("\(maxSum - maxItem)"  + " " + "\(minSum - minItem)")
   
   
}




miniMaxSum(arr: [1,3,5,7,9])
