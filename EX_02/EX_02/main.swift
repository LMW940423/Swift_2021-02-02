//
//  main.swift
//  EX_02
//
//  Created by 이민우 on 2021/02/02.
//

import Foundation

print("Input your decimal no. : ", terminator : "")
var inputNum = Int(readLine()!)
var unwrappedNum = 0

if let _ : Int = inputNum{
    unwrappedNum = inputNum!
    factorial(num : unwrappedNum)
}else{
    print("올바른 수를 입력하세요!")
}

/*
 Input your decimal no. : 4
 4's factorial value = 24
 */

func factorial(num : Int){
    print("\(num)'s factorial value = \(result(num: num))")
}

func result(num : Int) -> Int{
    var resultNum = 1
    
    for i in (1...num).reversed(){
        resultNum = resultNum * i
    }
    return resultNum
}
