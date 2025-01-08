// Mutable Variable -> can be changed
var greeting = "Hello, There!"
greeting = "What's Up!"

// immutable variable -> cannot be changed
let nationality = "Indonesia"
//nationality = "Malaysia" | Cannot assign to value: 'nationality' is a 'let' constant

// guard
func greet(person: String?) {
    guard let name = person else {
        print("Name is required!")
        return
    }
    print("Hello, \(name)!")
}
greet(person: nil)
greet(person: "Irvan")

// for guard loop
func checkNumbers(numbers: [Int]) {
    for number in numbers {
        guard number > 0 else {
            print("Found a non-positive number: \(number)")
            return
        }
        print("Number is positive: \(number)")
    }
}

checkNumbers(numbers: [1, 2, 3, -1, 4])

func procesOrder(orderID: String?, buyer: String?) {
    guard let orderID = orderID, !orderID.isEmpty else {
        print("Order ID is invalid!")
        return
    }
    
    guard let name = buyer, !name.isEmpty else {
        print("Buyer name is invalid!")
        return
    }
    print("Processing order \(orderID) for \(buyer!)")
}
procesOrder(orderID: nil, buyer: nil)

/*
 Why Use guard?

 1. Prevents deep nesting and makes the code easier to read.
 2. Helps establish clear preconditions or validations at the beginning of a function.
 */

// lazy
// properti yang disimpan yang nilai awalnya dihitung hanya ketika diakses untuk pertama kalinya.
class WeatherService {
    lazy var currentWeather: String = {
        print("Fetching weather data...")
        // Simulate a costly computation or API call
        return "Sunny, 25°C"
    }()
    
    func displayWeather() {
        print("Today's weather: \(currentWeather)")
    }
}

let weatherService = WeatherService()
print("WeatherService initialized.")
weatherService.displayWeather()
// WeatherService initialized.
// Fetching weather data...
// Today's weather: Sunny, 25°C

