// Closure is data type that can hold multiple line of code
func performOperation(a: Int, b: Int, operation: (Int, Int) -> Int) {
    let result = operation(a, b)
    print("Result: \(result)")
}

// Using a closure as an argument
performOperation(a: 5, b: 3) { (x, y) -> Int in
    return x + y
}
