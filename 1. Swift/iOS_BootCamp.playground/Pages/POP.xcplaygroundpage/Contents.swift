//: [Previous](@previous)
//pop
import Foundation

var str = "Hello, playground"

protocol Payable {
    func calculateSalary()-> Int
    func increaseSalary()->Int
}

extension Payable {
    func calculateSalary()->Int{
        return 1000
    }
}

//with extension no need to implement functions
class Salary:Payable{
    func increaseSalary() -> Int {
        return 100
    }


}


//: [Next](@next)
