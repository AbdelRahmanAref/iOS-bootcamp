//: [Previous](@previous)
//functions
import Foundation

//1. accept array and return Int
func addNumbers(numbers: [Int])-> Int {
    var total = 0
    for number in numbers { total += number}
    return total
}
addNumbers(numbers: [1,2,3,4,5,5])

//2. accept any number of intergers "variadic"
func addNumbersVariadic(numbers: Int...)->Int{
    var total = 0
    for number in numbers { total += number}
    return total
}
addNumbersVariadic(numbers: 1,2,3,4,5,5)

//no external parameter
func addTwoNumbers(_ num1: Int, _ num2: Int)->Int{
    return num1+num2
}
addTwoNumbers(3, 5)

//functions with inout parameters
func temp(a1: inout Int, b1: inout Int) {
    let t = a1,
    a1 = b1
    b1 = t
}

var no = 2
var co = 10
temp(a1: &no, b1: &co)
print("Swapped values are \(no), \(co)")

//closures
//1. () -> ()
let studentName = { print("welcome to swift closure")}
studentName()
//2. (Int, Int)->Int
let divide = { (val1: Int, val2: Int)-> Int in
    return val1/val2
}
let result = divide(200,20)
divide(100,1)
//3. (String, String) -> Bool
let ascend = {(s1: String, s2: String)-> Bool in
    return s1>s2
}

ascend("swift 5.1","great")



let greeting:(String, String) -> String = { (time:String, name:String) -> String in
    return "Good \(time), \(name)!"
}

//let greeting:(String, String) -> String = { "Good \($0), \($1)!" }

let text = greeting("morning", "Ahmed")
print(text)
//https://medium.com/swift-india/functional-swift-closures-67459b812d0
//4. shorthand argument names


//5. implicit returns from closure


//6. trailing closure

//7. capturing values

//8. non-escaping closure

//9. escaping closure

//10. autoclosure

//11. closure vs blocks vs delegates




//: [Next](@next)
