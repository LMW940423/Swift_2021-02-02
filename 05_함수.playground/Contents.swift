import Cocoa

// 함수 : function

func integerSum(a : Int, b : Int) -> Int{ // Int와 Int를 받아서 Int를 리턴한다!
    return a + b
}

print(integerSum(a: 5, b: 5))

// 홤수 만들기
func greet(person : String) -> String{
    return "Hello \(person)!"
}

print(greet(person: "Anna")) // Hello Anna!
print(greet(person: "Brian")) // Hello Brian!

// 파라미터가 없는 함수
func sayHelloWorld() -> String{
    return "Hello World!"
}

sayHelloWorld()

// 복수의 파라미터를 사용하는 함수
func greet1(person : String, alreadyGreeted : Bool) -> String{
    if alreadyGreeted{
        return ("Hello \(person), too.")
    }else{
        return ("Hello \(person)")
    }
}

greet1(person : "Tim", alreadyGreeted : true)
greet1(person : "Tim", alreadyGreeted : false)


// 초기값과 변수명을 없애는 함수
// _ name으로 쓰게 되면 name은 보이지 않는다 // zipCode는 외부적 변수 이름, postalCode는 내부적 변수 이름 // String?은 만약 값이 안들어온다면 "USA"라고 쓴다 (nil값일 때 ) => optional
func buildAddress(_ name : String, address : String, city : String, zipCode postalCode: String, country : String? = "USA") -> String{
    return """
        \(name)
        \(address)
        \(city)
        \(postalCode)
        \(country ?? "")
    """
}

print(buildAddress("John Doe", address : "5 Convington Square", city : "Birmingham", zipCode : "01234"))
print(buildAddress("John Doe1", address : "5 Convington Square", city : "Birmingham", zipCode : "01234", country : "Korea"))
print(buildAddress("John Doe2", address : "5 Convington Square", city : "Birmingham", zipCode : "01234", country : nil))

// 반환값이 없는 함수
// Void는 안써도 똑같다 (기본 return은 void)
func printHello(name : String) -> Void{
    print("\(name)님! 안녕하세요!")
}
printHello(name: "유비")

func printAndCount(string : String) -> Int{
    print(string)
    return string.count
}

func printWithoutCounting(string : String){
    let _ = printAndCount(string: string) // _변수는 리턴값의 소멸
}

print(printAndCount(string: "Hello World!"))

printWithoutCounting(string: "Hello World!")

// 가변 매개변수
func sayHelloToFriends(me : String, friends : String...) -> String{
    return "Hello \(friends)! I'm \(me)"
}

print(sayHelloToFriends(me: "초선", friends: "손견", "손책", "장양"))
print(sayHelloToFriends(me: "조조"))

// 복수의 값을 return하는 함수
func getCountry() -> (dialCode : Int, isoCode : String, name : String){
    let country = (dialCode : 82, isoCode : "KR", name : "Korea")
    return country
}

print(getCountry())

// 배열중 최대값과 최소값 return
func minMax(array : [Int]) -> (min : Int, max : Int){
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array : [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")



