//
//  main.swift
//  EX_03
//
//  Created by 이민우 on 2021/02/02.
//

import Foundation

print("Input your number : ", terminator : "")
var inputNum = Int(readLine()!)

if let _ : Int = inputNum{
    gugudan(num : inputNum!)
}else{
    print("올바른 숫자를 입력해주세요!")
}

func gugudan(num : Int){
    var resultNum = ""
    
    for i in 1...9{
        for j in num..<num + 4{
            resultNum = String(format: "%2d", i * j)
            print("\(j) * \(i) = \(resultNum)", terminator : "\t")
        }
        print("")
    }
}

