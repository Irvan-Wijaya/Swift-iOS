// OddEvenChecker
func oddEvenChecker(_ input: Int) -> String {
    return input.isMultiple(of: 2) ? "Even" : "Odd"
}
oddEvenChecker(1)

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

// Factorial
func factorial(_ input: Int) -> Int {
    guard input >= 0 else { return 0 }
    guard input != 0 else { return 1 }
    return input * factorial(input - 1)
}

func factorial2 (_ num: Int) -> Int {
    return num == 0 ? 1 : num * factorial(num - 1)
}
factorial(5)
factorial2(7)

//

