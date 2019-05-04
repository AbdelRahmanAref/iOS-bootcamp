//: [Previous](@previous)
//flow control
import UIKit

var str = "Hello, playground"
let answer = false

//ternary operator
answer ? print("true") : print("false")

//same in normal if block
if (answer) {
    print("true")
}else {
    print("false")
}
func giveAwardToIf(name: String) -> String{
    let message: String
    if name == "Ahmed"{
        message = "Congratulations, \(name)!"
    }else{
        message = "no way"
    }
    return message
}

giveAwardToIf(name: "Ahmed")
giveAwardToIf(name: "Ali")
//guard
func giveAwardTo(name: String){
    guard name == "Ahmed" else { print("no way"); return}
    print("congratulations, \(name)!")
}
giveAwardTo(name: "Ahmed")
giveAwardTo(name: "Ali")

//switch
let name = "iOS Course"
switch name {
case "swift":
    print("Hello swift")
case "iOS Course":
    print("Hello iOS")
default:
    print("Hello there")
}

let password = "12345"
switch (name, password) {//can make also with tuple
    //try to implement fizzbuzz problem with tuple!
case ("iOS Course", "12345"):
    print("success")
default:
    print("failed")
}

//for loops
let items = [1,2,3,4,5,6]
//1.
for item in items { print (item)}
//2.
for (index, value) in items.enumerated().reversed() { print("index is: \(index)  and value is: \(value)")}
//3. range operator
for n in 1...6 { print(n)}
//4.
for n in 0..<items.count {print(n)}
//5.
var sum = 0
for item in items { sum += item}
print("sum is: ", sum)
//6.
let loginButton = UIButton()
let signupButton = UIButton()
let logoutButton = UIButton()
let buttons = [loginButton, signupButton, logoutButton]
for button in buttons {
    button.backgroundColor = .red
    button.layer.cornerRadius = 5.0
}
//7. use where with for loop
for item in items where item > 3 { print(item)}

//while loop
var number1 = 1
while number1 < 5 {
    print("number1 is counting", number1)
    number1 += 1
}

//repeat while loop
var number2 = 1
repeat {
    print("number2 is counting", number2)
    number2 += 2
} while( number2 < 10)
