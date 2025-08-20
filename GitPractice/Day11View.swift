/*
- Day 11 is about access modifiers
    - public
    - private
    - fileprivate


 - good example of when to use access modifiers in a bank account struct
 struct BankAccount {
     var funds = 0
     mutating func deposit(amount: Int) {
         funds += amount
     }
     mutating func withdraw(amount: Int) -> Bool {
         if funds >= amount {
             funds -= amount
             return true
         } else {
             return false
         }
     }
 }

 should be the following or else you acould access the secretive funds from the outside, you want to use the mutating method
 struct BankAccount {
     private var funds = 0
     mutating func deposit(amount: Int) {
         funds += amount
     }
     mutating func withdraw(amount: Int) -> Bool {
         if funds >= amount {
             funds -= amount
             return true
         } else {
             return false
         }
     }
 }


- static access modifier
    static means the struct itself can call the method but you cannot
 call the method from an instance of the struct
 struct Employee {
     let username: String
     let password: String
     static let example = Employee(username: "cfederighi", password: "hairforceone")
 }
 you would call Emplyee.example to get the Employee instance within the struct itself








