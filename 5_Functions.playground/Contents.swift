func MyFavoriteArtist(_ artist: String, from: Int) {
    print("My favorite artist is \(artist) from \(from)")
}
MyFavoriteArtist("Blackpink", from: 2018)

// parameters
func countLetters(_ string: String) -> Int {
    return string.count
}
countLetters("Hello World")

func MyAlbumCollection(name:String) -> Bool {
    if name == "Born Pink" {
        return true
    }
    return false
}
if MyAlbumCollection(name: "Born Pink"){
    print("YES OFC")
} else {
    print("NOPE")
}


