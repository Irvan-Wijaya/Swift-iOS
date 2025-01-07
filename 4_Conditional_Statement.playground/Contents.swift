var actions: String
var person = "Singer"

if person == "Singer" {
    actions = "Sing"
} else if person == "Actor" {
    actions = "Act"
} else {
    actions = "Do nothing"
}

var dieting: String
var exercise = true
var food = true

if exercise && food {
    dieting = "Success"
}

if !exercise && !food {
    dieting = "Success"
}

for i in 1...10 {
    print("\(i). \(i) times 5 is \(i * 5)")
}

var sty = "van"
for _ in 1..<4 {
    sty += " jaya"
}
print(sty)

var songs: [String] = ["Die With Smile", "Waking Up Together With You", "Lose Control", "APT", "Drunk Text"]
for song in songs {
    print("My Favorite song is \(song)")
}

var jobs: [String] = ["Student", "Teacher", "Engineer", "Doctor", "Lawyer"]
var action: [String] = ["Study", "Teach", "Work", "Practice", "Practice Law"]

for i in 0..<jobs.count {
    print("\(jobs[i]) gonna do \(action[i])")
}

// loop in loop
for i in 1..<jobs.count {
    var string = "\(jobs[i]) gonna"
    
    for _ in 0...3 {
        string += " \(action[i])"
    }
    print(string)
}

// break
var counter = 0
while true {
    print("Counter \(counter)")
    counter += 1
    if counter == 5 {
        break
    }
}

// continue
for song in songs {
    if song == "APT" {
        continue // it will reset, + 1 index
    }
    print("my favorite song is \(song)")
}

var album = 4
switch album {
case 1:
    print("Create More")
case 2:
    print("Rising Star")
case 3...5:
    print("Lets go World Tour")
default:
    print("make something?")
}
