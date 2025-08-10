import SwiftUI

struct Day1View: View {
    var body: some View {
        ScrollView {
            Text("Day 1: How to create constants and variables.")
            Text(
            """
            - Covers let constants that cannot be mutated and var variables that can be. Only discussed String types. 
            
            - There is no standard but a vast majority of Swift developers use camelCase.
            
            - Learned how to use print statement to print values 
            
            - For a quote inside a String use \"Quotation\"
            
            - Linebreaks aren't allowed.
            
            - Can use multiline strings for a lot of text or paragraph """  """

            - printing the count of the string charactrs with print(someString.count)

            - can uppercase a string using someString.uppercased()

            - return bool for someString.hasPrefix("A day")

            - return bool for someString.hasSuffix(".jpg")

            - Large integers can be written let reallyBig = 100_000_000 or any dashes you want they will be ignored by compiler

            - Integers can be used for mathetmatical operations

            - Mathematical operations can be short handed to += -= *= etc.

            - Integers have number.isMultiple(of: 3) bools 

            - Doubles were introduced and the concept of adding an Integer to a double doesn't always get you the exact answer you are looking for because of the types

            - Covered string interpolation 
                var score = 85
                var str = "Your score was \(score)"

            - Type annotation for declaring varibales 
                let album: String = "Reputation"
                let year: Int = 1989
            )
        }
    }
}

#Preview {
    Day1View()
}
