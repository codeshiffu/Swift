import UIKit

var str = "Hello, playground"
str = "Hi";

/*var testStr
*/

let pi = 3.14; str = "Test"

var str1 : String = "String variable"
var str2 : String = String()
str2 = "This is second string"

var str3 = String("Hello")
// var variableName = <initial Value>
// var variableName : <dataType>

let str4 : String = "This is the 4th string"
let str5 = "This is LET type data"

var str6 : String = ""
var str7 : String?
var str8 : String!

// var str9

print(str)


var num : Int = 10
var num1 = 20
var num2 : Int?
var num3 : Int!
num3 = 10
num = 20

var no : Float = 1.0
var no1 = 1.1
var no2 : Float = 1.2
let no3 = 2.1

var arr = [1,2,3]
var strArr = ["a", "b"]
var intArr : [Int] = []

var intArr1 : [Int]?
intArr1 = []
var intArr2 = [Int]()

print(arr)
print(intArr.first ?? 2)
print(arr.last)

print(arr[1])
arr.append(4)
print(arr)
arr.insert(5, at: 1)
print(arr.count)
print(arr.isEmpty)
arr.remove(at: 3)
print(arr.count)

// Key: value
var dict : [String : String] = [:]
var dict1 = ["Test":"Dict", "Test1": "Dict2"]
var dict2 = [String : Int]()
var dict3 : [String : Float]!
dict3 = ["Key":1.0]

print(dict1.count)
var dictValue = dict1["Test"]
dict1.updateValue("Dict3", forKey: "Test3")
print(dict1.count)
print(dict1["Test3"])
var valueOfDict = dict1.values
var keyOfDict = dict1.keys
print(valueOfDict)

// Tuples
var tupleObj = (1, "One")
print(tupleObj)
print(tupleObj.1)
var tupleObj2 = (firstObj : 3, secondObj : "One")
var tupleObj3 = (name : "Testname", surname : "TestLastName")
print(tupleObj3.surname)
//tupleObj2.firstObj = 2
print(tupleObj2.firstObj)

// Enum
enum GENDER : String {
    case MALE = "M" // 0
    case FEMALE = "F" //1
}

enum COUNTRY : Int {
    case India = 101
    case USA = 201
    case Spain
}


let gender = GENDER.MALE.rawValue
print(gender)


var person = COUNTRY.India
var spainsh = COUNTRY.Spain
print(spainsh.hashValue)

switch person {
case .India, .Spain : print("Person is Indian")
case .USA : print("Person is American")
//case .Spain : print("Person is Spanish")
default : print("This is default")
}

// Assignment -> = , += , -=
var i = 10
i += 20
i = i + 20

// Comparison Opertors
// <, > , <= , >=

//Logical Operator
// &&, ||, !

// Arithematic Operators
// +, -, *, /, %

// Range operator
// a...b, a..<b

// Ternary operator
var area = 1000
var isRZone = area > 1500 ? true : false
print(isRZone)

if ((i < 50) && (i != nil)) {
    
} else {
    
}

// Nested if else
if i < 100 {
    // code
} else if (i > 1000) {
    
}


//if i ..< 10 {
//
//}


var forLoopArr = [10, 20, 30, 40]

for objOfForLoop in forLoopArr {
    print(objOfForLoop)
}

for objOfForLoop in 1...10 {
    print(objOfForLoop)
}

for objofForLoop in 1..<10 {
    print(objofForLoop)
}

// Do not works
//for objofForLoop in 10...1 {
//    print(objofForLoop)
//}

var baseNum = 20
// 20*20*20

for _ in 1...3 {
    baseNum *= baseNum
}

// while
// repeat - while

//while baseNum < 30 {
//    //Code
//}

repeat {
    // code
print("Atleast print once")
} while baseNum == 2000


let someCharater : Character = "d"
print(someCharater)

switch someCharater {
case "a", "A":
    print("The character found is a")
case "b", "B":
    print("The character found is b")
case "d":
    print("The character found is d")
case "c":
    print("The character found is c")
case "e":
    print("The character found is e")
default:
    print("Default statement")
}


var coordinates = (1,0)
switch coordinates {
case (0,0):
    print("This is origin")
case (1,0):
    print("Left corner")
case (0,1):
    print("Right corner")
case (1,1):
    print("Top right corner")
default:
    print("This dot is inside a sqaure")
}



// Class & Structure

class squareArea {
    // Variables
    //Functions
    
    var sides : Int
    // var sides : Int!
    // var sides : Int = 10
    // var sides = 10

//    func calculateArea (para) -> return  {
//
//    }
    
    init(sidePara :Int) {
        sides = sidePara
    }
    
    deinit {
        print("Class obj is getting deallocated")
    }
    
    func calculateArea() {
        let result = sides * sides
        sides = 10
        print(result)
    }
}


var objSqaureArea : squareArea? = squareArea(sidePara: 0) // 1
objSqaureArea?.sides = 10
objSqaureArea?.calculateArea()
//
//var obj2SqaureArea = objSqaureArea //2
//obj2SqaureArea?.sides = 30
//print(objSqaureArea?.sides)


if (true) {
    let obj3SqaureArea =  squareArea(sidePara: 0) // 1 - counter  // 3rd obj of class
    obj3SqaureArea.sides = 10 //1
    obj3SqaureArea.calculateArea()//1
} //0

// obj1 & obj2 =====> same memory location

objSqaureArea = nil

// 10.15 - 5
// Mac
// MacOS - 10.15 - Xcode - 10


struct RectArea {
    var length : Int! // = 10
    var breath : Int!
    
   mutating func calculateRectArea () {
        let result = length * breath
        length = 10
        print(result)
    }
}



var objRectArea = RectArea(length: 10, breath: 20) // RectArea()
objRectArea.calculateRectArea()

var obj2RectArea = objRectArea
obj2RectArea.length = 20
print(objRectArea.length) // 10
print(obj2RectArea.length) // 20


let sqrAreaObj = squareArea(sidePara: 20)
sqrAreaObj.sides = 30

var rectAreaObj = RectArea(length: 20, breath: 30)
rectAreaObj.length = 30


// ARC


class Job {
    weak var skill : Skill?
    
    deinit {
        print("Job is getting deallocated")
    }

}

class Skill {
    var job : Job!
    deinit {
        print("Skill is getting deallocated")
    }

    
}



var objJob :Job? = Job()
var objSkill : Skill? = Skill()

objJob?.skill = objSkill
objSkill?.job = objJob

objSkill = nil
objJob = nil


// Retain cycle gets created
// Strong


var objJob1 = Job()
objJob1.skill = Skill()

var objSkill2 = Skill()
objSkill2.job = Job()


class functionClass {
    func addTwoNumbers(_ num1: Int, num2: Int) -> Int {
        var no1 = num1
        no1 = 20
        return num1 + num2
    }
    
    func addTwoNumbers(no1: Int, no2:Int) {
        print(no1 + no2)
    }
    
    
    func addTwoNumbers() {
        let num1 = 10
        let num2 = 20
        let result = num1 + num2
        print(result)
    }
    
    func addNumbers(num :Int...) {
        var result = 0
        for no in num {
            result += no
        }
        print("The result of Variadic function: \(result)")
    }

    
    func addValues(num :Int...) {
        var result = 0
        for no in num {
            result += no
        }
        print("The result of Variadic function: \(result)")
    }

}

let funcObj = functionClass()
print(funcObj.addTwoNumbers(no1: 20, no2: 30))
funcObj.addTwoNumbers(20, num2: 40)
funcObj.addTwoNumbers()


//Variadic
funcObj.addNumbers(num: 1,4,5,8,9,3,2)


//InOut


class InoutClass {
    func swapNum (num1 :inout Int, num2 :inout Int) {
//        var no1 = num1
//        var no2 = num2
        
        let temp = num1
        num1 = num2
        num2 = temp
        
    }
    
    func swapString (str1 :String, str2 :String) {
        var s1 = str1
        var s2 = str2
        
        let temp = s1
        s1 = s2
        s2 = temp
    }
    
    func swap<T>(para1 :inout T, para2 :inout T) {
        let temp = para1
        para1 = para2
        para2 = temp
    }
}

let objInoutClass = InoutClass()
var number1 = 20
var number2 = 30
objInoutClass.swapNum(num1: &number1, num2: &number2)

// Generic
objInoutClass.swap(para1: &number1, para2: &number2)
print(number1)
print(number2)

var genericStr1 = "Hello"
var genericStr2 = "How are you doing"

objInoutClass.swap(para1: &genericStr1, para2: &genericStr2)
print(genericStr1)
print(genericStr2)


// Any and AnyObject

class AnyClass {
    var num :Any = 20
    var pi : Float = 3.14
    var str : String = "Hi"
    var dict : [String :Any] = [:]
}

let objAnyClass : AnyObject = AnyClass()
//print(objAnyClass.num)
//print(objAnyClass.pi)
//print(objAnyClass.str)

// Objc - swift


// Properties
// Stored property
// Computed Property
// Lazy Property

class AreaClass {
    var sides : Int!  // Stored Property
    var area : Int {
        get {
            return sides * sides
        }
        set(newArea) {
            sides = newArea/2
        }
    }
    
    // //Lazy Stored property
    lazy var num : Int = 20
    
}


let objAreaClass = AreaClass()
objAreaClass.sides = 20
print(objAreaClass.area)

objAreaClass.area = 200
print(objAreaClass.sides)

print(objAreaClass.num)
objAreaClass.num = 30

print(objAreaClass.num)

objAreaClass.num = 40
print(objAreaClass.num)


class Student {
    
    var marks : Marks?
}

class Marks {
    var result : Int?
    
    func useGuard() {
        guard let result1 = objStudent.marks?.result
            else {
                return
        }
        
        print(result1)
        
    }
}



let objStudent = Student()
let objMarks = Marks()
objMarks.result = 20
objStudent.marks = objMarks

print(objStudent.marks?.result)
if let result = objStudent.marks?.result {
    print(result)
}





if let marks = objStudent.marks {
    if let result = marks.result
    {
        print(result)
    }
}



// Extension

var extensionStr = "Test"





extension String {
    func concat (concatStr : String, mainStr : String) -> String {
        return mainStr + " " + concatStr
    }
}

//extensionStr.concat(concatStr: <#T##String#>, mainStr: <#T##String#>)

var extStr = "Test concat"

//extStr.concat(concatStr: <#T##String#>, mainStr: <#T##String#>)
//extensionStr



// Closure
func additionOfTwoNos (no1 :Int, no2 :Int) -> Int {
    print("Addition done")
    return no1 + no2
}

var addNumber = additionOfTwoNos
print(addNumber(10,20))


var addNumber1 : (Int, Int) -> Int = {(no1, no2) in
    return no1 + no2
}

print(addNumber1(30,40))

var addNumber2 : (Int, Int) -> Int = {
    return $0 + $1
}

print(addNumber2(50,40))

// Non escaping and Escaping
// default Closure -> Non escaping


func callNonEscapingClosure (checkNum: Int, callAddnumber : @escaping (Int, Int) -> Int) {
    // some line of code
    
    if checkNum > 10
    {
        print("The condition check for Closure")

        callAddnumber(10,20)
    }
    
    // some more line of code
}


callNonEscapingClosure(checkNum: 20) { (para1, para2) -> Int in
    print("Closure called")
    return para1 + para2
}

func differenceOfClosureandFunc (check: Int, num : Int) -> Int {
    // some line of code
    if check > 10 {
        print("The condition check for Func")
        return num
    }
    return 0
    
    // some more line of code
}

//differenceOfClosureandFunc(check: 10, num: additionOfTwoNos(no1: 10, no2: 20))

//Addition done
//The condition check for Func


//The condition check for Closure
//    Closure called


// ****** Cannot have inout on variadic variables

//func varInout (num : Int...) {
//    for no in num
//}
