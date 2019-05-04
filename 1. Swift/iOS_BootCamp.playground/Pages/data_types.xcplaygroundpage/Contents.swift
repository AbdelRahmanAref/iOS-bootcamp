//: [Previous](@previous)
//Data types//
import Foundation

var str = "Hello, playground"
var int  : Int = 3
var uint : UInt = 4
let int8 : Int8 = 12

Int.max
Int.min
UInt.max
UInt8.max
Int16.max
Int32.max

//type inference
let playerName = "Ali"
print(playerName)

//type safety
let ActorName:String
//ActorName = 55 //compile error

//optionals//
var perhapsInt: Int? // declaration is equivalent to the next one. value ss nil
var perhapsString: String? = nil

if perhapsString != nil { print (perhapsString)}
else { print ("string has nil value")}
//nil coalescing // same as last code block but using nil coalesing
print("\(perhapsString)" ?? "string has no value")

//1. force unwrapping
perhapsString = "some text"
print("\(perhapsString)" ?? "string has no value")
print(perhapsString!)

//2. Automatic unwrapping - implicitly unwrapped optionals
var myString: String!
//print("\(myString!)") // Fatal error: Unexpectedly found nil while unwrapping an Optional value
myString = "Another text"
print("\(myString)") //optional ("Another text")
print("\(myString!)") //Another text
print("\(myString ?? "nil")")

//3. optional binding
var yourString: String?
yourString = "Hello swift 5"
if let someString = yourString {print("String has: \(someString)")}
else { print("String does not have a value") }

//4. using guard let statement
func authenticate(username: String?, password:String?){
    guard let username = username, let password = password else {return}
    print("username = \(username), password = \(password)")
}

authenticate(username: "Bob", password: "1234")

//Tuples//
var error501 = (501, "server not implemented")
print("the code is \(error501.0)")
print("the definition of the error is \(error501.1)")

var error404 = (errorCode: 404, description: "not found")
print(error404.errorCode)

//Arrays
var stringArray = [String]()
var intArray: [Int] = [1,21,3]
intArray[2]
intArray.append(4)
intArray += [12]
intArray[4] = 50
intArray.sort()

//sets
var stringSet = Set<String>()
stringSet.count
stringSet.insert("Ahmed")
stringSet.isEmpty
stringSet.contains("Mohammed")


//Dictionaries
var someDict = [1: "One", 2: "two", 3: "three"]
var anotherDict: [Int:String] = [1: "One", 2: "two", 3: "three"]
var thirdDict = [Int:String]()
//Accessing variables of the dictionary
var someVariable = someDict[1]


//: [Next](@next)
