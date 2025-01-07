enum WeatherType {
    case clear
    case rain(windSpeed: Int)
    case snow
    case cloud
}

func getWeatherStatus(_ type: WeatherType) -> String? {
    switch type {
    case .clear: return "Clear"
    case .rain(let windSpeed) where windSpeed > 30: return "Heavy Rain"
    case .snow: return "Snow"
    case .cloud: return "Cloud"
    default: return nil
    }
}
getWeatherStatus(.clear)

enum HTTPStatusCode: Int {
    case ok = 200
    case notFound = 404
    case unauthorized = 401
}
// Mengakses nilai raw
let statusCode = HTTPStatusCode.ok
print("Status Code: \(statusCode.rawValue)")

enum NetworkState {
    case connected
    case disconnected
    case connecting
}

func handleNetworkState(_ state: NetworkState) {
    switch state {
    case .connected:
        print("Network is connected")
    case .disconnected:
        print("Network is disconnected")
    case .connecting:
        print("Connecting to the network...")
    }
}
handleNetworkState(.connecting)

enum APIResponse {
    case success(data: String)
    case failure(error: String)
}

func handleResponse(_ response: APIResponse) {
    switch response {
    case .success(let data):
        print("Success: \(data)")
    case .failure(let error):
        print("Error: \(error)")
    }
}

handleResponse(.success(data: "User data loaded"))  // Output: Success: User data loaded
handleResponse(.failure(error: "Invalid token"))   // Output: Error: Invalid token
