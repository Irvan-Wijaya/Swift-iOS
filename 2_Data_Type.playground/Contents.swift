// String
var name: String
name = "Swift"

// Int
var age: Int
age = 20

// Double
var height: Double
height = 1.8

// Bool
var isMarried: Bool
isMarried = true

// Float
var weight: Float
weight = 60.0

// String Interpolation -> Fancy name for combine swift
print("Hello, \(name) -> Age: \(age)")

// Array
var numbers: [Int]
numbers = [1, 2, 3, 4, 5]

var song: [String] = ["Die With Smile", "Waking Up Together With You", "Lose Control", "APT"]
var songs: [Any] = ["Die With Smile", "Waking Up Together With You", "Lose Control", "APT", 4, 5.4]

var both = song + songs
both += ["Everything Is Awesome"]
print(both)

// Dictionary -> more sensible than array
var students: [String: Int]
students = ["Swift": 100, "Java": 90, "Age": 23]

var Person: [String: Any] = [
    "Name": "Irvan",
    "Age": 23,
    "Job": "Pro iOS Developer",
    "Salary": 9999999.99
]
Person["Name"]
Person["Salary"]

// Another way to declare dictionary
var teacher: Dictionary<String, Int> = [:]

// Set -> an unordered collection
let ingredients: Set = ["cocoa beans", "sugar", "cocoa butter", "salt"]
if ingredients.contains("sugar") {
    print("No thanks, too sweet.")
}
