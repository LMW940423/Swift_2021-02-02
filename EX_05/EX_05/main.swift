//
//  main.swift
//  EX_05
//
//  Created by 이민우 on 2021/02/02.
//

import Foundation

// 몇개의 숫자를 입력한지 결정한 후
// 숫자를 입력하고 이중 최대값의 위치와 최대값을 구하라

print("입력할 숫자의 개수는? (100개 미만) : ", terminator : "")
var inputNum = Int(readLine()!)
var tempArray : [Int] = []

if let _ : Int = inputNum{
    print("\(inputNum!)개의 숫자를 입력하세요!")
    for _ in 1...inputNum!{
        let tempNum = Int(readLine()!)
        if let _ : Int = tempNum{
            tempArray.append(tempNum!)
        }else{
            print("올바른 숫자를 입력하세요!")
        }
    }
    let bounds = minMax(array : tempArray)
    print("입력한 숫자 중 최대값은 \(bounds.max)이고, 위치는 \(bounds.index)번째 값입니다.")
}else{
    print("올바른 숫자를 입력하세요!")
}

func minMax(array : [Int]) -> (index : Int, max : Int){
    var currentMax = array[0]
    var indexNum = 0
    
    for (index, value) in array.enumerated(){
        // max값 구하면서 그에 맞는 index 구하기
        if value > currentMax{
            currentMax = value
            indexNum = index + 1
        }
    }
    return (indexNum, currentMax)
}

