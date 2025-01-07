func getMood(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    }
    return "Sad"
}
var mood = getMood(weather: "sunny")

func alternate(action: String) {
    if action == "Sad" {
        print("Netflix 24 Hrs")
    }
}

if let moodStatus = getMood(weather: "rainy") {
    alternate(action: moodStatus)
}

func AlbumRelease (name: String) -> Int? {
    if name == "The Beatles" {
        return 1964
    }
    if name == "The Rolling Stones" {
        return 1965
    }
    return nil
}
AlbumRelease(name: "The Beatles")

let Items = ["Bottle", "Phone", "Wallet", "Book", "Tie"]

func getIndex(of string: String, in array: [String]) -> Int {
    for i in 0...array.count{
        if array[i] == string{
            return i
        }
    }
    return 0
}
getIndex(of: "Tie", in: Items)
getIndex(of: "Phone", in: Items)

//non-optional, name1 harus selalu memiliki nilai yang valid dan tidak bisa nil.
// Nama pengguna yang telah diinisialisasi saat objek dibuat dan tidak diharapkan bernilai nil
var name1: String = "Van"

// optional, name2 bisa memiliki nilai ("Vans") atau tidak ada nilai sama sekali
// Data yang diambil dari API yang mungkin tidak selalu ada, seperti alamat email opsional pengguna
var name2: String? = "Jov"

// implicitly unwrapped optional, variabel akan selalu memiliki nilai saat digunakan, tetapi secara teknis bisa bernilai nil.
// Properti UI yang diinisialisasi setelah tampilan dimuat tetapi tidak segera tersedia saat objek dibuat, seperti UILabel dalam UIKit.
var name3: String! = "Jess"


// MARK: OPTIONAL CHAINING
func Songs(year: Int) -> String? {
    switch year {
    case 2020:
        print("How you like that")
    case 2022:
        print("Pink Venom")
    case 2023:
        print("Shutdown")
    default: return nil
    }
    return nil
}

let mySong = Songs(year: 2023)?.uppercased()
print(mySong!)

let songReleased = Songs(year: 2023) ?? "Unknown"
print(songReleased)
