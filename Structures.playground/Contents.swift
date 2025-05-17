import Foundation

struct Person {
    let name: String
    let age: Int
}

let p = Person(
    name: "Foo",
    age: 23
)

p.name
p.age

let helloText = "\(p.name) is \(p.age) years old."

struct Hero {
    let name: String
    let type: String
    let intro: String
    var hello: String
    var readonlyValue: String { "readonly" }
    var experience: Int = 0
    init(name: String, type: String, experience: Int = 0) {
        self.name = name
        self.type = type
        self.intro = "\(name) is a \(type)"
        self.hello = "\(name) say hello to everybody"
    }
    
    mutating func earnExperience(exp: Int){
        self.experience += exp
    }
    
    func copy(name: String, experience: Int) -> Hero{
        Hero(
            name: name, type: self.type, experience: experience
        )
    }
}

var arthas = Hero(name: "Arthas", type: "Tank")
let sylvana = Hero(name: "Sylvana", type: "ADC")

arthas.intro
arthas.hello
sylvana.intro
sylvana.hello
// arthas.readonlyValue = "aa"

arthas.hello = "K.Arthas"
arthas.hello
arthas.earnExperience(exp:10)


let copyArthas = arthas

arthas.experience
copyArthas.experience
arthas.earnExperience(exp:100)
arthas.experience
copyArthas.experience

// In swift, structure can not inherit each others
let h1 = arthas.copy(name: "Orn", experience: 0)
h1.hello
h1.experience

