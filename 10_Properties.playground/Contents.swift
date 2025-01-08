/*
 Property Observers
 - Apa?: Properti yang memiliki pengamat (willSet dan didSet) untuk memantau perubahan nilai.
 - Kenapa digunakan?: Untuk mengeksekusi kode tambahan saat properti berubah.
 - Kapan digunakan?: Ketika Anda ingin merespons perubahan nilai (misalnya, memperbarui UI atau validasi).
 */
struct Person {
    var clohtes: String {
        willSet{
            updateMsg(msg: "Im changing from \(clohtes) to \(newValue)")
        }
        
        didSet {
            updateMsg(msg: "Im changed from \(oldValue) to \(clohtes)")
        }
    }
    
    func updateMsg(msg: String){
        print(msg)
    }
}
var irvan: Person = Person(clohtes: "T-Shirt")
irvan.clohtes = "Hoodie"

// static properties
// Gunakan static jika Anda memerlukan nilai yang bersifat global untuk semua instance dari suatu tipe, seperti API key
struct BlackpinkFans {
    static let favoriteSongs = "Shutdown"
    var name: String
    var age: Int
}

let fan = BlackpinkFans(name: "Van", age: 23)
print(BlackpinkFans.favoriteSongs)

struct AppConfig {
    static let appName = "MyCoolApp"
    static let apiVersion = "v1.0"
}
print(AppConfig.appName)
