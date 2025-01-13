// ada 3 cara (options, default, value)
// Setiap properti dalam class harus memiliki nilai saat instance dibuat.
// Class Tidak Memiliki Initializer Default Otomatis, tidak seperti struct

class Person {
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}

// inheritance -> subclass mewarisi properti dan method dari superclass or parent
/* subclass dapat:
1. Menggunakan properti dan method dari superclass
2. Menambahkan properti dan metode baru yang spesifik untuk subclass.
3. Mengubah perilaku metode yang diwarisi menggunakan override.
*/

class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("Singing...")
    }
}

// override digunakan untuk mengubah perilaku metode
class CountrySinger: Singer {
    override func sing() {
        print("Trucks, Guitar, and Liquor...")
    }
}

class KpopSinger: Singer {
    var company: String
    
    init(name: String, age: Int, company: String) {
        self.company = company
        super.init(name: name, age: age)
    }
}

class HeavyMetalSinger: Singer {
    var noiceLevel: Int
    
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiceLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
        print("Audience Segmented!")
    }
}

var taylorSwift = Singer(name: "Taylor Swift", age: 30)
taylorSwift.sing()

var taylor = CountrySinger(name: "Taylor Swift", age: 30)
taylor.sing()

var metalica = HeavyMetalSinger(name: "Metalica", age: 40, noiseLevel: 100)
metalica.noiceLevel
metalica.sing()

// Polymorphism
class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerfomance () -> String {
        return ("Album Performance \(name) sold lots")
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String){
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerfomance() -> String {
        return ("Studio Album Performance \(name) sold lots")

    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String){
        self.location = location
        super.init(name: name)
    }
    
    override func getPerfomance() -> String{
        return ("Live Album Performance \(name) sold lots")
    }
}

var BP = StudioAlbum(name: "BP", studio: "YG")
var YG = LiveAlbum(name: "YG", location: "Seoul")
var Spotify = LiveAlbum(name: "Spotify", location: "Seoul")

var allAlbum: [Album] = [BP, YG, Spotify]
for album in allAlbum {
    print(album.getPerfomance())
}

protocol PaymentMethod {
    func processPayment(amount: Double)
}

class CreditCard: PaymentMethod {
    func processPayment(amount: Double) {
        print("Processing credit card payment of \(amount)")
    }
}

class PayPal: PaymentMethod {
    func processPayment(amount: Double) {
        print("Processing PayPal payment of \(amount)")
    }
}

func makePayment(using method: PaymentMethod, amount: Double) {
    method.processPayment(amount: amount)
}

let paymentMethod: PaymentMethod = CreditCard()
makePayment(using: paymentMethod, amount: 100.0)

// Type casting
// is -> Checks if an instance is of a certain type.
let string: Any = "Hello, Swift!"
if string is String {
    print("It's a String!")
}

// as? -> if cast fail return nil
let someAny: Any = "This is a String"
if let string = someAny as? String {
    print("Casted to String: \(string)")
} else {
    print("Cast failed")
}

// as! -> Forcefully casts an instance to a different type. Use only if you are certain the cast will succeed.
let number: Any = 42
let intNumber = number as! Int
print("Forced cast result: \(intNumber)")

// as for Upcasting -> Used to cast an instance to its superclass or protocol type.
class Animal {}
class Dog: Animal {}
let dog = Dog()
let animal = dog as Animal // Upcasting


/* additional ->
@objcMembers class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("Singing...")
    }
}
*/
