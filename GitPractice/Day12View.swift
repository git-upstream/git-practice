
*/
/*
- introduction to classes

5 differences between classes and structs
1) You can make one class build upon functionality in another class, gaining all its properties and methods as a starting point. If you want to selectively override some methods, you can do that too.
2) Because of that first point, Swift won’t automatically generate a memberwise initializer for classes. This means you either need to write your own initializer, or assign default values to all your properties.
3) When you copy an instance of a class, both copies share the same data – if you change one copy, the other one also changes.
4) When the final copy of a class instance is destroyed, Swift can optionally run a special function called a deinitializer.
5) Even if you make a class constant, you can still change its properties as long as they are variables.


For example starting class:
class Employee {
    let hours: Int
    init(hours: Int) {
        self.hours = hours
    }
}

and then two classes that inherit from that class:
class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}


- the override keyword in case you want to override a method to be unique within a sublcass

- the final keyword to add to class if you do not what it to be subclassed (support inheritance).


- initializer lesson and super init
class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isConvertible: Bool) {
        self.isConvertible = isConvertible
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}


- deep copying with classes
if you want to get a simliar behavior as the value type struct (a unique value) you can add a deep copying method for instance:
class User {
    var username = "Anonymous"

    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}


- optional deinitalizers
your deiniltalizer in a class is going to get called regardless but you can declare your own

1) Just like initializers, you don’t use func with deinitializers – they are special.
2) Deinitializers can never take parameters or return data, and as a result aren’t even written with parentheses.
3) Your deinitializer will automatically be called when the final copy of a class instance is destroyed. That might mean it was created inside a function that is now finishing, for example.
4) We never call deinitializers directly; they are handled automatically by the system.
5) Structs don’t have deinitializers, because you can’t copy them

class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}










*/
