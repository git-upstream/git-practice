/*
Complex data types

 - Arrays

 let john = "John Lennon"
 let paul = "Paul McCartney"
 let george = "George Harrison"
 let ringo = "Ringo Starr"
 let beatles = [john, paul, george, ringo]
 print(beatles[1]) = Paul McCartney


 - Sets - unique
 let colors = Set(["red", "green", "blue")])
 - if you try to add another "red" it will be ignored

- Tuples
 - Fixed yo ucan't add or remove items
 - You can't change the type of at tuple after creation
 - Access tuple items using numerical positions or by naming them, but Swift won't let you read numbers or names that don't exist.

 var name = (first: "Taylor", last: "Swift")
 print(name.0) = "Taylor"


 General help of when to use arrays vs sets vs tuples
 if you need secific fixed collection of related values where each item has precise position or name
 let address = (house: 555, street: "Taylor Swift")

 - If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
 let set = Set(["aardvark", "astronaut", "azalea"])

 - If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
 let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
 Arrays are by far the most common of the three types.


 - Dictionaries
 let heights = [
 "Jim": 1.45,
 "Ed": 1.23
print(heights["Jim"])

 let favoriteIceCream = [
     "Paul": "Chocolate",
     "Sophie": "Vanilla"
 ]

 - can use fallback for default value
 - favoriteIceCream["Charlotte", default: "Unknown"]

- Creating empty collections
    Collections are made of arrays sets and dictionaries.
    var teams = [String: String]()
    teams["Paul"] = "Red"
    var results = [Int]()
    var words = Set<String>()
    var numbers = Set<Int>()
 var scores = Dictionary<String, Int>()
 var results = Array<Int>()

 - enums

 enum Result {
 case success
 case failure
 }
 print(Result.failure)

- Enum associated values
enum Activity {
 case bored
 case running(destination: String)
 case talking(topic: String)
 case singing(volume: Int)
 }

 - Enum raw values
 enum Planet: Int {
     case mercury = 1
     case venus
     case earth
     case mars
 }

 




















 */
