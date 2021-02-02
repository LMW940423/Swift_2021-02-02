import Cocoa

var str = "Hello, playground"

/*
 Collection : 여러 값들을 묶어서 하나의 변수로 사용
 
 Array : 순서가 있는 리스트 컬렉션
 Dictionary : Key와 Value의 쌍으로 이루어진 Collection
 Set : 순서가 없고, 멤버는 유일한 값으로 구성
 */

// Array
// Empty Int Array 생성

var intVariable : Array<Int> = Array<Int>()

intVariable.append(1)
intVariable.append(10)
intVariable.append(100)
intVariable.append(Int(100.1))
print(intVariable)

intVariable.contains(100) // 데이터가 있는지 확인하는 기능
intVariable.contains(99)
intVariable[0]
intVariable[0...1]

intVariable.remove(at: 0) // 앞으로 땡겨준다
intVariable.count

intVariable.removeLast() // 맨 마지막 거 지우기
intVariable

intVariable.removeAll()
intVariable
intVariable.count
/*
 여러가지 Array 선언
 */

// empty Double Array
//var doubleVariable : Array<Double> = Array<Double>()
//var doubleVariable : Array<Double> = [Double]() // Array<Double> == [Double]
//var doubleVariable : [Double] = [Double]()
var doubleVariable : [Double] = [] // Array 선언하는 간단항 방법
var intVariable2 : [Int] = [] // famous rule for making a array
var intVariable5 = [Int]()

// 배열에 초기값을 넣어 생성하기
let intVariable3 : [Int] = [1, 2, 3]
let intVariable4 = [1, 2, 3] // 값이 있으면 바로 형을 파악할 수 있다

// 빈 배열을 생성
var someIntS : [Int] = []
print("someInts is of type [Int] wirh \(someIntS.count) items")
// 배열에 3을 추가
someIntS.append(3)
print("someInts is of type [Int] wirh \(someIntS.count) items")
// 배열을 지우자
someIntS = [] // 초기화방법
print("someInts is of type [Int] wirh \(someIntS.count) items")

// 기본값 설정된 배열 생성하기
var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

// 배열 합치기
var sixDoubles = threeDoubles + anotherThreeDoubles
print(sixDoubles)

// 문자를 이용한 배열의 생성
var shoppingList : [String] = ["Eggs", "Milk"]
shoppingList

// 문자열 배열의 출력
for i in 0..<shoppingList.count{ // shoppingList의 count보다 작을 때까지!
    print(shoppingList[i])
}

if shoppingList.isEmpty{ // 배열이 비어있는지를 확인
    print("The shopping list is empty")
}else{
    print("The shopping list is not empty")
}

// 배열에 데이터 추가
shoppingList.append("Four")
print(shoppingList.count, shoppingList)

shoppingList += ["Banking", "Powder"] // 이런식으로의 추가도 가능하다!
print(shoppingList.count, shoppingList)

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
print(shoppingList.count, shoppingList)

// 배열의 특정 위치 데이터 변경 및 삭제
shoppingList[4...6] = ["Bananas", "Apples"] // 범위가 3일 때 값을 2개 넣으면 중간값이 사라진다
print(shoppingList.count, shoppingList)

// 배열의 특정 위치 데이터 추가, 삭제, 변경
shoppingList.insert("Maple Syrup", at: 0) // at은 넣고자하는 index
print(shoppingList.count, shoppingList)

let mapleSyrup = shoppingList.remove(at: 0)
print(mapleSyrup, shoppingList.count, shoppingList)

shoppingList
// 배열의 값과 인덱스가 필요한 경우
for (index, value) in shoppingList.enumerated(){ // enumerated를 이용하면 앞에는 index, 뒤에는 data를 가져올 수 있다
    print("Item \(index + 1) : \(value)")
}

// Dictionary
//var stringDictionary : Dictionary<String, String> = [String : String]() // Key값, Value값이 String인 Dictionary 선언
var stringDictionary : [String : String] = [:] // 다른 방법

stringDictionary["name"] = "유비" // name이라는 key값에 유비라는 value
stringDictionary["name1"] = "관우" // 똑같은 key값에 넣을 경우 전에 있던 value는 삭제된다.
stringDictionary["name2"] = "장비"
stringDictionary["a"] = "초선"

print(stringDictionary)

var scoreDictionary : [String : Int] = [:]
scoreDictionary["유비"] = 100
scoreDictionary["관우"] = 90
scoreDictionary["장비"] = 80

scoreDictionary

var anyDictionary : [String : Any] = [:]
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100
anyDictionary

// key에 해당하는 값 변경
anyDictionary["someKey"] = "dictionary"
anyDictionary

// key에 해당하는 값 제거
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary
anyDictionary["someKey"] = nil // nil값을 대입하면 전부 지워진다.
anyDictionary

// set

var integerSet : Set<Int> = Set<Int>()
integerSet.insert(1) // set은 중괄호
integerSet.insert(100)
integerSet.insert(100)
integerSet.insert(99)
integerSet // set은 동일한 값이 있을 경우 제외시킨다.

integerSet.contains(1)
integerSet.contains(10)

integerSet.remove(100) // at보다는 지우고자 하는 값을 지우는 것이 보통적이다
integerSet

// 배열 문자를 이용한 Set 생성
var favoriteGenres : Set<String> = ["Rock", "Classical", "Hip hop"]
print(favoriteGenres.count, favoriteGenres)

var favoriteGenres1 : Set = ["Rock", "Classical", "Hip hop"]
print(favoriteGenres1.count, favoriteGenres1)

favoriteGenres1.isEmpty

// 추가
favoriteGenres.insert("Jazz")
favoriteGenres

// 삭제
if let removeGenre = favoriteGenres.remove("aaa"){
    print("\(removeGenre) I'm over it")
}else{
    print("I never much cared for that.")
}

// 숫자와 집합 계산할 때 유용하게 사용하는 Set
let oddDigits : Set = [1, 3, 5, 7, 9]
let evenDigits : Set = [0, 2, 4, 6, 8]
let singleDigits : Set = [2, 3, 5, 7]

// 합집합
oddDigits.union(evenDigits).sorted()

// 교집합
oddDigits.intersection(evenDigits)
oddDigits.intersection(singleDigits).sorted()

// 차집합
oddDigits.subtracting(singleDigits)

// 여집합
oddDigits.symmetricDifference(singleDigits).sorted()

// Set의 멤버십과 동등 비교
let houseAnimal : Set = ["dog", "cat"]
let farmAnimal : Set = ["cow", "chicken", "sheep", "dog", "cat"]
let cityAnimal : Set = ["duck", "rabbit"]

houseAnimal.isSubset(of: farmAnimal) // isSubset은 부분집합 / houseAnimal은 farmAnimal의 부분집합이다.
farmAnimal.isSuperset(of: houseAnimal) // isSuperset은 모집단 파악 / farmAnimal은 houseAnimal의 모집단이다.
farmAnimal.isDisjoint(with: cityAnimal) // 완전 다른 집단을 의미












