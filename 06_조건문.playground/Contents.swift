import Cocoa

var isCar = true
var isNew = true

if isCar, isNew{
    print("New Car~")
}

isNew = false

if isCar, isNew{
    print("New Car")
}else{
    print("Old Car")
}

// Unwrapping if문

let price : Double? = 5.99

// !가 들어가면 강제로 unwrapping하기
if price! > 5.0{
    print(price!)
}

// 조건형 unwrapping
if let p = price, p > 5.0{
    print(p)
}

// Switch 조건문

let personAge = 14

if personAge < 1{
    print("baby")
}else if personAge < 3{
    print ("toddler")
}else if personAge > 13{
    print("gradescooler")
}else if personAge < 18{
    print("teen")
}else{
    print("adult")
}

// break가 기본으로 세팅되어 있다! (break가 필요 없을 땐 따로 설정해야한다!)
switch personAge{
case 0..<1: print("baby")
case 1..<3: print("toddler")
case 3..<5: print("preschooler")
case 5..<13: print("gradeschooler")
case 13..<18: print("teen")
default : print("adult")
}

let someInteger = 100
switch someInteger{
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

let character : Character = "a"

switch character{
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}

// Tuple 사용하기
let somePoint = (1, 1)

switch somePoint{
case (0, 0):
    print("\(somePoint) is at the origin.")
case (_, 0): // _는 어떤 값이든 상관없이!
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case(-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside if the box")
}

// case에 where조건 사용하기
let anotherPoint = (1, -1)

switch anotherPoint {
case let(x,y) where x == y:
    print("\(x), \(y) is on the line x == y")
case let(x,y) where x == -y:
    print("\(x), \(y) is on the line x == -y")
default:
    print("test")
}

let countryName = "United Kingdom"
var countryCode = ""

if countryName == "Unite Kingdom"{
    countryCode = "GB"
}else if countryName == "Mexico"{
    countryCode = "MX"
}else if countryName == "Canada"{
    countryCode = "CA"
}else if countryName == "Spain"{
    countryCode = "ES"
}else if countryName == "United States"{
    countryCode = "US"
}else{
    countryCode = "??"
}

print("Country named '\(countryName)'has code \(countryCode)")

// 위의 소스를 enum과 switch로 사용

// enum 열거하는 것! (case에 들어갈 문장이 길 경우 case명을 미리 약어로 정해놓을 수 있다!)
enum Countries : String{
    case uk = "United Kingdom"
    case mx = "Mexico"
    case ca = "Canada"
    case es = "Spain"
    case us = "United States"
    case unknown = ""
}

// value가 nil이면 case .unknown 실행!
switch Countries(rawValue: countryName) ?? .unknown{
case .uk : countryCode = "GB"
case .mx : countryCode = "MX"
case .ca : countryCode = "CA"
case .es : countryCode = "ES"
case .us : countryCode = "US"
case .unknown : countryCode = "??"
}
print("Country named '\(countryName)'has code \(countryCode)")
