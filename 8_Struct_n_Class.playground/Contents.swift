struct Person {
    let name: String
    var age: Int
    
    func describe(){
        print("My name is \(name), and I am \(age) years old")
    }
}

let person = Person(name: "John", age: 25)
let orang = Person(name: "Wick", age: 43)

print(person.name)
print(orang.age)

var anotherPerson = person
anotherPerson.age = 53
print(person)
print(anotherPerson)

anotherPerson.describe()

// MARK: CLASS

