/*
-structs are introduced
 for instance:
 struct Album {
     let title: String
     let artist: String
     let year: Int
     func printSummary() {
         print("\(title) (\(year)) by \(artist)")
     }
 }

- creating instances of structs
 let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
 let wings = Album(title: "Wings", artist: "BTS", year: 2016)
 print(red.title)
 print(wings.artist)
 red.printSummary()
 wings.printSummary()

- if not going full constant and pure functions you can use var with mutating keyword for chaning it. Realize that this just makes another copy of your struct by value behind the scense using COW


 struct Employee {
     let name: String
     var vacationRemaining: Int

     func takeVacation(days: Int) {
         if vacationRemaining > days {
             vacationRemaining -= days
             print("I'm going on vacation!")
             print("Days remaining: \(vacationRemaining)")
         } else {
             print("Oops! There aren't enough days remaining.")
         }
     }
 }


- computed properties are covered:
 struct Employee {
     let name: String
     var vacationAllocated = 14
     var vacationTaken = 0

     var vacationRemaining: Int {
         vacationAllocated - vacationTaken
     }
 }

 - getters and setters
 var vacationRemaining: Int {
     get {
         vacationAllocated - vacationTaken
     }

     set {
         vacationAllocated = vacationTaken + newValue
     }
 }


- will set and did set

- struct App {
 var contacts = [String]() {
     willSet {
         print("Current value is: \(contacts)")
         print("New value will be: \(newValue)")
     }

     didSet {
         print("There are now \(contacts.count) contacts.")
         print("Old value was \(oldValue)")
     }
 }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")


 - structs are memberwise intializers - structs intializtions use their attributes in the order they were definied.
 struct Player {
     let name: String
     let number: Int
 }
 let player = Player(name: "Megan R", number: 15)
 
 struct Player {
     let name: String
     let number: Int

     init(name: String, number: Int) {
         self.name = name
         self.number = number
     }
 }

 */
