/*
Closures

 - simple closure example
 let sayHello = {
     print("Hi there!")
 }
 sayHello()


 - closure with parameters
 let sayHello = { (name: String) -> String in
     "Hi \(name)!"
 }

 - closure with no parameters and returning Void
 var greetCopy: () -> Void = greetUser
 The empty parentheses marks a function that takes no parameters.
 The arrow means just what it means when creating a function: we’re about to declare the return type for the function.
 Void means “nothing” – this function returns nothing. Sometimes you might see this written as (), but we usually avoid that because it can be confused with the empty parameter list.

 let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
     if name1 == "Suzanne" {
         return true
     } else if name2 == "Suzanne" {
         return false
     }

     return name1 < name2
 })


- progression of reduction of closure semantics
 1) let captainFirstTeam = team.sorted { name1, name2 in
     if name1 == "Suzanne" {
         return true
     } else if name2 == "Suzanne" {
         return false
     }
     return name1 < name2
 }

 2) let captainFirstTeam = team.sorted {
 if $0 == "Suzanne" {
     return true
 } else if $1 == "Suzanne" {
     return false
 }
 return $0 < $1
}

 3) let reverseTeam = team.sorted {
 return $0 > $1
}

 4) let reverseTeam = team.sorted { $0 > $1 }





 */
