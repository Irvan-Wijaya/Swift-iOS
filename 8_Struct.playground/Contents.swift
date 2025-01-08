import Foundation
// Struct sangat ideal untuk tipe data ringan yang tidak memerlukan kompleksitas inheritance, seperti model data API atau konfigurasi aplikasi.
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

// mutating struct
struct task {
    var title: String
    var isCompleted: Bool = false
    
    mutating func markAsCompleted() {
        isCompleted = true
    }
    
    mutating func rename(to newTitle: String){
        title = newTitle
    }
}

var swiftCourse = task(title: "Learn Swift")
swiftCourse.isCompleted
swiftCourse.markAsCompleted()
swiftCourse.isCompleted
swiftCourse.rename(to: "Swift Fundamentals")
print(swiftCourse)

/*
 Keuntungan dan Kapan Harus Menggunakan
 Keuntungan:
 1. Efisiensi: Struct adalah tipe nilai sehingga perubahan pada satu instance tidak memengaruhi instance lainnya.
 2. Kontrol Mutasi: Menggunakan mutating memastikan bahwa mutasi hanya terjadi jika benar-benar diperlukan.
 
 Kapan Harus Digunakan:
 1. Ketika Anda memerlukan entitas ringan yang membutuhkan perubahan data, seperti menghitung skor game, memodifikasi koordinat, atau memperbarui data dalam UI kecil.
 
 Hindari Penggunaan:
 1. Jika data membutuhkan hubungan kompleks atau sering diakses oleh banyak bagian kode, lebih baik gunakan class yang bersifat referensi.
 */

// Best Practice

struct User: Codable {
    let id: Int
    let name: String
    let email: String
}

let jsonData = """
{
    "id": 1,
    "name": "Irvan Wijaya",
    "email": "irvan@example.com"
}
""".data(using: .utf8)!

do {
    let user = try JSONDecoder().decode(User.self, from: jsonData)
    print(user.name)
} catch {
    print("Failed to decode JSON")
}

struct AppConfig {
    static let baseURL = "https://api.example.com"
    static let timeoutInterval: TimeInterval = 30.0
}
print(AppConfig.baseURL)
