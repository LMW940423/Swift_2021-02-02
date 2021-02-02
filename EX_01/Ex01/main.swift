//
//  main.swift
//  Ex01
//
//  Created by 이민우 on 2021/02/02.
//

import Foundation

print("Input your decimal no. : ", terminator : "")
var inpNum = Int(readLine()!) // ! => nil을 수용하는 것!
var repNum = 0

if let _ : Int = inpNum{
    repNum = inpNum! // optional변수를 일반 변수에 넣어주면 일반 변수로 사용할 수 있다
    makeStar()
}else{
    print("Input value is wrong!")
}


/*
 Input your decimal no. : 5
 *
 **
 ***
 ****
 *****
 ****
 ***
 **
 *
 
 */
func makeStar(){
    // 별표를 증가하면서 출력하기
    for lineNo in 1...repNum{
        repeatFor(num: lineNo)
    }
    // 별표를 감소하면서 출력하기
    for lineNo in (1...repNum - 1).reversed(){
        repeatFor(num: lineNo)
    }
}

func repeatFor(num : Int){
    for _ in 1...num{
        print("*", terminator : "")
    }
    print("")
}
