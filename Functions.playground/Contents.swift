import Foundation

func helloSwift() {
    let today: Date = Date()
    print("Hello friends, today is \(today.ISO8601Format())!")
}

func swapValue(a: Int, b: Int) -> (Int, Int) {
    return (b, a)
}

func implicitReturn(a: Int) -> Int {
    a + 5
}

func internalExternal(external internalName : Int) -> Int {
    internalName + 2
}

@discardableResult
func implicitExternalName(_ x: Int) -> Int {
    x*2
}

helloSwift()
var a = 2
var b = 3
print(a, b)
(a,b) = swapValue(a:a, b:b)
print(a, b)
print(implicitReturn(a: 5))
print(internalExternal(external: 5))
print(implicitExternalName(2))

// HOC
func wrapperFunction(
    with value: Int, t: Int = 2
) -> Int {
    func double(value: Int) -> Int {
        value * 2
    }
    func tripple(value: Int) -> Int {
        value * 3
    }
    if t == 2 {
        return double(value: value)
    }
    return tripple(value: value)
}

wrapperFunction(with: 3)
wrapperFunction(with: 3, t:3)

func getCouple(
    h: String = "dog",
    w: String = "cat"
) -> String {
    "\(h) \(w)"
}

getCouple()
getCouple(h:"tada")
getCouple(w:"ei")
getCouple(h:"a", w:"b")
