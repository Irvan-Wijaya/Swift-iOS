import math_h
// OddEvenChecker
func oddEvenChecker(_ input: Int) -> String {
    return input.isMultiple(of: 2) ? "Even" : "Odd"
}
oddEvenChecker(1)

func oddEven (_ num: Int) -> String {
    return num % 2 == 0 ? "Even" : "Odd"
}

// Fibonaci Seqeunce
func fibonaciSequence2(_ input: Int) -> [Int] {
    guard input >= 0 else { return [] }
    var result: [Int] = []
    var previous: Int = 0
    var current: Int = 1
    for _ in 0..<input {
        result.append(current)
        (previous, current) = (current, previous + current)
    }
    return result
}

func fibonaciSequence (_ num: Int) {
    var a = 0, b = 1
    for _ in 0..<num {
        print(a, terminator: " ")
        let temp = a + b
        a = b
        b = temp
    }
}

fibonaciSequence(10)
fibonaciSequence2(10)

func fibonaci (_ num: Int) {
    var a = 0, b = 1
    for _ in 0..<num {
        print(a, terminator: " ")
        let temp = a + b
         a = b
        b = temp
    }
}

// Factorial
func factorial(_ input: Int) -> Int {
    guard input >= 0 else { return 0 }
    guard input != 0 else { return 1 }
    return input * factorial(input - 1)
}

func factorial2 (_ num: Int) -> Int {
    return num == 0 ? 1 : num * factorial2(num - 1)
}
factorial(5)
factorial2(0)

// Palindrome Checker
func palindrome (_ word: String) -> Bool {
    if word == String(word.reversed()) { return true }
    return false
}
palindrome("racecar")

var testSqrt = 16 % 2

// Prime Checker *
func isPrime (_ x: Int) -> Bool {
    if x < 2 {return false}
    for i in 2...Int(sqrt(Double(x))) {
        if x % i == 0 {return false}
    }
    return true
}
isPrime(11)

// Reversed String
func reversedString(_ word: String) -> String {
    return String(word.reversed())
}
reversedString("TEST")

// sum an array
let arrayNum: [Int] = [1,2,3,4,5]
func sumArray (_ array: [Int]) -> Int {
    let sum = array.reduce(0, +)
    return sum
}
sumArray(arrayNum)

// Anagram
func checkAnagram (_ word1: String, _ word2: String) -> Bool {
    if word1.sorted() == word2.sorted() { return true }
    return false
}
checkAnagram("silent", "listen")

// FizzBuzz
func fizzBuzz (_ num: Int) -> String {
    if num % 3 == 0 && num % 5 == 0 {
        return "FizzBuzz"
    }
    if num % 3 == 0 {
        return "Fizz"
    }
    if num % 5 == 0 {
        return "Buzz"
    }
    return String(num)
}
fizzBuzz(45)

func printFizzBuzz(_ n: Int) -> [Any] {
    var result: [Any] = []
    for i in 1...n {
        if i % 3 == 1 || i % 5 == 1 {
            result.append(i)
        } else if i % 3 == 0 && i % 5 == 0 {
            result.append("FizzBuzz")
        } else if i % 3 == 0 {
            result.append("Fizz")
        } else if i % 5 == 0 {
            result.append("Buzz")
        } else {
            result.append(i)
        }
    }
    return result
}
let numFizzBuzz = printFizzBuzz(15)
print("\n\(numFizzBuzz)")

// Print pangkat tanpa math.pow
func power (_ num: Int, exponent: Int) -> Int {
    var result = 1
    for i in 1...exponent {
        result *= num
    }
    return result
}
power(3, exponent: 3)

// MARK: Lvl 2
// Remove Duplicate
func removeDuplicate (_ array: [Int]) -> [Int] {
    var result: [Int] = []
    for num in array {
        if !result.contains(num) {
            result.append(num)
        }
    }
    return result
}
let order = removeDuplicate([1,1,1,2,2,2,3,3,3,4,4,4,5,5,5])

func duplicated (_ array: [Int]) -> [Int] {
    return Array(Set(array))
}
let unordered = duplicated([1,1,1,2,2,2,3,3,3,4,4,4,5,5,5])
print("\nOrdered: \(order)\nUnordered:\(unordered)")

// Second largest number
func getSecondLargest (_ array:[Int]) -> Int {
    let finalArray = Array(Set(array).sorted(by: >))
    return finalArray[1]
}
let secondLargest = getSecondLargest([1,2,3,4,5,12,12,2,23,53,12,34,53,99,99])
print("\nSecond largest number: \(secondLargest)")

// Ascending & Descending
func Asceding(_ array:[Int]) -> [Int] {
    let sortedArray = Array(array).sorted(by: <)
    return sortedArray
}
let sortedAsceding = Asceding([56,231,98,23,98,2,83,87,23,63,2,89])
print("\nAscending: \(sortedAsceding)")

func Descending(_ array:[Int]) -> [Int] {
    let sortedArray = Array(array).sorted(by: >)
    return sortedArray
}
let sortedDescending = Descending([56,231,98,23,98,2,83,87,23,63,2,89])
print("\nDescending: \(sortedDescending)")

// Count Character *
func charFrequently (_ word: String) -> [Character: Int] {
    var result: [Character: Int] = [:]
    for char in word {
        result[char, default: 0] += 1
    }
    return result
}
let myName = charFrequently("Irvan Wijaya")
print(myName)

// Continous if want

// MARK: Cases
func AngkaToKalimat(_ number: Int) -> String {
    let satuan = ["", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas"]
    
    func konversi (_ num: Int) -> String {
        if num < 12 {
            return satuan[num]
        } else if num < 20 {
            return konversi(num - 10) + " belas"
        } else if num < 100 {
            return konversi(num / 10) + " puluh" + (num % 10 != 0 ? " " + konversi(num % 10) : " ")
        } else if num < 200 {
            return "seratus" + (num % 100 != 0 ? " " + konversi(num % 100) : "")
        } else if num < 1000 {
            return konversi(num / 100) + " ratus" + (num % 100 != 0 ? " " + konversi(num % 100) : "")
        } else if num < 2000 {
            return "seribu" + (num % 1000 != 0 ? " " + konversi(num % 1000) : "")
        } else if num < 1_000_000 {
            return konversi(num / 1000) + " ribu" + (num % 1000 != 0 ? " " + konversi(num % 1000) : "")
        } else if num < 1_000_000_000 {
            return konversi(num / 1_000_000) + " juta" + (num % 1_000_000 != 0 ? " " + konversi(num % 1_000_000) : " ")
        } else if num < 1_000_000_000_000 {
            return konversi(num / 1_000_000_000) + " miliar" + (num % 1_000_000_000 != 0 ? " " + konversi(num % 1_000_000_000) : " ")
        } else if num < 1_000_000_000_000_000 {
            return konversi(num / 1_000_000_000_000) + " triliun" + (num % 1_000_000_000_000 != 0 ? " " + konversi(num % 1_000_000_000_000) : "")
        } else {
            return "Mohon maaf, angka terlalu besar"
        }
    }
    return konversi(number) + " rupiah"
}
print(AngkaToKalimat(8))
print(AngkaToKalimat(16))
print(AngkaToKalimat(88))
print(AngkaToKalimat(134))
print(AngkaToKalimat(888))
print(AngkaToKalimat(1234))
print(AngkaToKalimat(3567))
print(AngkaToKalimat(5_123_456))
print(AngkaToKalimat(888_888_888_888))
print(AngkaToKalimat(999_999_999_999_999))
print(AngkaToKalimat(1_000_000_000_000_000))

