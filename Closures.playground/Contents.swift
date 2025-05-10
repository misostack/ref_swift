import Foundation

let add : (Int, Int) -> Int
= { (a: Int, b: Int) -> Int in
    a + b
}

let substract: (Int, Int) -> Int = {
    (a: Int, b: Int) -> Int in
    a - b
}

add(1,2)

func customOperator(
_ a :Int,
_ b :Int,
    using f: (Int, Int) -> Int
) -> Int {
    f(a,b)
}

customOperator(1,2, using: add)
customOperator(1,2, using: substract)
customOperator(1,2, using: {
    (a: Int, b: Int) -> Int in
    a * b
})
customOperator(3,2) {
    (a: Int, b: Int) -> Int in
    (a+b)*(a-b)
}

customOperator(3,2) {
    (a, b) in
    (a+b)*(a-b)
}

customOperator(3,2) {
    $0 + $1
}

let numbers = [30,2, 15, 9]
numbers.sorted(by: {(a: Int, b:Int) -> Bool in
    a > b
})
numbers.sorted(by: {(a: Int, b:Int) -> Bool in
    a < b
})

func asc(a: Int, b: Int) -> Bool {
    a < b
}
func desc(a: Int, b: Int) -> Bool {
    a < b
}

numbers.sorted(by: asc)
numbers.sorted(by: desc)
numbers.sorted(by: <)
numbers.sorted(by: >)

func customAdd(
using f: (Int, Int) -> Int,
_ a :Int,
_ b :Int
) -> Int {
    f(a,b)
}

func add10To(_ value: Int) -> Int {
    value + 10
}
func add20To(value: Int) -> Int {
    value + 20
}

customAdd(using: {$0 + $1}, 1, 2)

func doAdditional(
    on value: Int,
    using f: (Int) -> Int
) -> Int {
    f(value)
}

doAdditional(on: 2, using: {(a: Int) -> Int in a + 10})
doAdditional(on: 2, using: {$0 + 10})
doAdditional(on: 2, using: add10To)
doAdditional(on: 2, using: add20To(value:))

