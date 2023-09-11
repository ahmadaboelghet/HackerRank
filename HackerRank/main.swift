//
//  main.swift
//  HackerRank
//
//  Created by aBoelghet  on 09/09/2023.
//

import Foundation

func plusMinus(arr: [Int]) -> Void {
    var plusCount:Float = 0
    var minceCount:Float = 0
    var zerosCount:Float = 0
    for i in arr{
        if i == 0{
            zerosCount += 1
        }else if i > 0{
            plusCount += 1
        }else if i < 0{
            minceCount += 1
        }
    }
    print(Float(plusCount/Float(arr.count)))
    print(Float(minceCount/Float(arr.count)))
    print(Float(zerosCount/Float(arr.count)))

    let plusStr = String(format: "%.6f", plusCount/Float(arr.count))
    let minceStr = String(format: "%.6f", minceCount/Float(arr.count))
    let zerosStr = String(format: "%.6f", zerosCount/Float(arr.count))


}


plusMinus(arr:[-4,3,-9,0,1])


