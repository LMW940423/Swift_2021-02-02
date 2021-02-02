//
//  main.swift
//  EX_04
//
//  Created by 이민우 on 2021/02/02.
//

import Foundation

// 입력한 한 자릿수 정수의 합을 구하는 프로그램을 작성하라.
print("Enter an integer(0 ~ 9) : ", terminator : "")
var inputNum = Int(readLine()!)
var resultNum = 0
var sumNum = 0

if let _ : Int = inputNum{
    while(inputNum! != 0){
        resultNum += inputNum! % 10
        inputNum! /= 10
        print(inputNum!)
        print(resultNum)
    }
    print("Sum of digits = \(resultNum)")
}else{
    print("제대로된 숫자를 입력하세요!")
}

