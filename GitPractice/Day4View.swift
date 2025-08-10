/*
Loops
 For in loops:
 for _ in 1...5 { }
 for num in count { }

 While loops
 var number = 1
 while number <= 20 {
     print(number)
     number += 1
 }
 print("Ready or not, here I come!")

 Repeat loops
 var number = 1
 repeat {
     print(number)
     number += 1
 } while number <= 20
 print("Ready or not, here I come!")

 Exiting a loop
 break

 Exiting multiple loops:
 outerLoop: for i in 1...10 {
     for j in 1...10 {
         let product = i * j
         print ("\(i) * \(j) is \(product)")
         if product == 50 {
             print("It's a bullseye!")
             break outerLoop
         }
     }
 }

 Skip items
 continue

 Infinite loops
 var counter = 0
 while true {
     print(" ")
     counter += 1
     if counter == 273 {
         break
     }
 }
















 */
