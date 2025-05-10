import Foundation

func helloSwift() {
    let today: Date = Date()
    print("Hello friends, today is \(today.ISO8601Format())!")
}

func swapValue(a: Int, b: Int) -> (Int, Int) {
    return (b, a)
}

helloSwift()
var a = 2
var b = 3
print(a, b)
(a,b) = swapValue(a:a, b:b)
print(a, b)
