import Cocoa

let names = ["Anna", "Alex", "Brian", "Jack"]

for name in names {
    print("Hello, \(name)!")
}

for (index, text) in names.enumerated(){
    print("The name at index \(index) is \(text)")
}

let numberOfLegs = ["spider" : 8, "ant" : 6, "cat" : 4]

for (animalName, legCount) in numberOfLegs{
    print("\(animalName)s have \(legCount) legs")
}

let minutes = 60
let minuteInterval = 5

// stride를 사용하게 되면 (Interval을 기준으로 증가)
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print(tickMark)
}

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"

switch integerToDescribe{
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough // break없이 흘러가는 것
default:
    description += " an integer."
}
print(description)

// ------
var startIndex1 = 0
var endIndex1 = 100
var sum1 = 0

// 반복문에게 이름 부여
gameLoop : while startIndex1 <= endIndex1{
    startIndex1 += 1
    sum1 += startIndex1
    if sum1 >= 50{
        break gameLoop
    }else{
        continue gameLoop
    }
}
print(sum1)

