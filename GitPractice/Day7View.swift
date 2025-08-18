/*
Topics Covered

 functions introduction

 - instantiating
 - print statements

 - function declaration and print statement combined
 func printTimesTables(number: Int) {
     for i in 1...12 {
         print("\(i) x \(number) is \(i * number)")
     }
 }
 printTimesTables(number: 5)

- adding multiple parameters
 func printTimesTables(number: Int, end: Int) {
     for i in 1...end {
         print("\(i) x \(number) is \(i * number)")
     }
 }
 printTimesTables(number: 5, end: 20)

 - returning values from functions
 func rollDice() -> Int {
     return Int.random(in: 1...6)
 }
 let result = rollDice()
 print(result)

 - using higher order methods with your own functions
 func areLettersIdentical(string1: String, string2: String) -> Bool {
     let first = string1.sorted()
     let second = string2.sorted()
     return first == second
 }
 returning different return types like Bool and Double


 - getting multiple values returned such as in an array
 func getUser() -> [String] {
     ["Taylor", "Swift"]
 }
 let user = getUser()
 print("Name: \(user[0]) \(user[1])")

 - functions that return a tuple
 func getUser() -> (String, String) {
     ("Taylor", "Swift")
 }
 let user = getUser()
 print("Name: \(user.0) \(user.1)")

 - using a _ for types that are empty
 let (firstName, _) = getUser()
 print("Name: \(firstName)")

 - naming conventions for parameters
 func printTimesTables(for number: Int, end: Int) {
     for i in 1...end {
         print("\(i) x \(number) is \(i * number)")
     }
 }

 - functions with default parameter values:
 func printTimesTables(for number: Int, end: Int = 12) {
     for i in 1...end {
         print("\(i) x \(number) is \(i * number)")
     }
 }

 printTimesTables(for: 5, end: 20)
 printTimesTables(for: 8)

 printTimesTables(for: 5, end: 20)

 - handling errors with throws
 func checkPassword(_ password: String) throws -> String {
     if password.count < 5 {
         throw PasswordError.short
     }

     if password == "12345" {
         throw PasswordError.obvious
     }

     if password.count < 8 {
         return "OK"
     } else if password.count < 10 {
         return "Good"
     } else {
         return "Excellent"
     }
 }

 - do-catch and try blocks
 let string = "12345"

 do {
     let result = try checkPassword(string)
     print("Password rating: \(result)")
 } catch {
     print("There was an error.")
 }

*/
