//: [Previous](@previous)
//object types
import Foundation

var str = "Hello, playground"

//enum
enum WeatherType {
    case cloudy, sunny, windy
}

let today = WeatherType.sunny

//use enum with switch
switch today {
case .cloudy:
    print("it is cloudy")
case .sunny:
    print("it is sunny")
default:
      print("it is windy")
}
//use enum with conditional statement
if today == .cloudy { print("it's cloudy")}

//Structures:
// - for data encapsulation
// - instances are passed by value not reference
struct Marks{
    var mark1: Int
    var mark2: Int
    var mark3: Int
}
var markA = Marks(mark1: 1, mark2: 2, mark3: 3)//no need for initializer
var markB = markA
markB.mark1 = 5

print(markA.mark1)//1
print(markB.mark1)//5

//classes:
//- support inheritance of other classes
//-
class MarksClass{
    var mark: Int
    init(mark: Int) {
        self.mark = mark
    }
}
extension MarksClass {
    func doSomething(){ print("in extension")}
}

class studentMarks {
   //1. stored properties
    var mark1 = 300
    var mark2 = 400
    var mark3 = 500
    var sum = 0

    //2. lazy stored properties
    lazy var name = "Ali"

    //3. computed properties
    var calculation : Int{
        get { return mark1/mark2}
        set { sum = mark1 + mark2 + mark3}
    }

    // read only computed properties
    var percentage: Int {return mark1 / 1}

    //4. property observers
    var counter:Int = 0 {
        willSet(newTotal){print("Total counter is \(newTotal)")}
        didSet{if counter > oldValue {
            print("newly added counter is: \(counter - oldValue)")
            }
        }
    }

    //5. type properties
    static var typeProperty = "Static"

    //class vs static methods
}
//6. instance variables
var marks = studentMarks()
marks.mark1
marks.counter = 100
marks.counter = 1000


let pi = 3.14


protocol MarksProtocol{
    func giveAward(mark: Int)->String
}
//: [Next](@next)
