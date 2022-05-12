//: [Previous](@previous)

import Foundation
import Darwin

class Appliation {

//    1. You are working on a smart-fridge. The smart-fridge knows how old the eggs and bacon in it are.
//    You know that eggs spoil after 3 weeks (21 days) and bacon after one week (7 days).
//    Given baconAge and eggsAge(in days) determine if you can cook bacon and eggs or what ingredients you need to throw out.
//    If you can cook bacon and eggs print you can cook bacon and eggs.
//    If you need to throw out any ingredients for each one print a line with the text throw out _ingredient_ (where _ingredient_ is bacon or eggs) in any order.
    
  
    func problem1(_ becon: Int,_ egg: Int) {
        
        if becon > 7 && egg > 21 {
            print("Ikkalasi ham yaroqsiz.")
        }
        else if becon > 7 {
            print("Becon yaroqsiz")
        }
        else if egg > 21 {
            print("Tuxum yaroqsiz")
        }
        else{
            print("Hammasi yaxshi")
        }
        
    }

//    2.You are given a year, determine if it’s a leap year. A leap year is a year containing an extra day. It has 366 daysinstead of the normal 365 days.
//        The extra day is added in February, which has 29 days instead of the normal 28 days. Leap years     occur every 4 years. 2012 was a leap year and 2016 will also be a leap year.
//        The above rule is valid except that every 100 years special rules apply. Years that are divisible by 100 are not leap years if they are not also divisible by 400.
//        For example 1900 was not a leap year, but 2000 was. Print Leap year! or Not a leap year! depending on the case.
//    ### EXAMPLE
//    1. INPUT:
//    ```swift
//        var year = 2000
//    ```
//    OUTPUT:
//    ```swift
//        Leap year!
//    ```
//    2. INPUT:
//    ```swift
//        var year = 2005
//    ```
//    OUTPUT:
//    ```swift
//        Not a leap year!
//    ```
    
    var leap = false
    func problem2(_ year: Int) {
        
        if (year % 4 == 0) {

            if (year % 100 == 0 ) {

                if (year % 400 == 0) {

                    leap = true
                } else {
              leap = false

                }

            } else {
                leap = true
            }

            if (leap == true) {
                print(year, "  leap year ")
            } else {
             print(year, " not a leap year")
        }
        }
    }
 
//    3. If you use random() it will give you a random number. Generate a random number and use it to simulate a coin toss. Print heads or tails.
    
    
//    let coin = arc4random() % 3
//    if (coin == 0) {
//     print("Heads")
//    } else {
//        print("Tails")
//    }
    
    
//    4. You are given four variables __a__, __b__, __c__ and __d__. Print the value of the smallest one.
 
    func problem4(a: Int, b: Int, c: Int, d: Int )  {
      var min = a

        if b < min {
            min = b
        }
        if c < min {
            min = c
        }
        if d < min {
            min = d
        }
        print(min)
}
//
//    5. Test if number is divisible by 3, 5 and 7. For example 105 is divisible by 3, 5 and 7, but 120 is divisible only by 3 and 5 but not by 7.
//    If number is divisible by 3, 5 and 7 print number is divisible by 3, 5 and 7otherwise print number is not divisible by 3, 5 and 7.
     
    func problem5(_ num:  Int) -> Int {
        var myNum = num
        var bool = false
        if(num % 3 == 0 ){
            myNum = myNum / 3
            bool = true

        } else {
            bool = false
        }
        if(num % 5 == 0) {
            myNum = myNum / 5
            bool = true
        } else{
            bool = false
        }
        if(myNum % 7 == 0){
            myNum = myNum / 7
            bool = true
        } else {
            bool = false
        }
        if bool == true {
            print(bool, "number is divisible by 3, 5 and 7")
        } else {
            print(bool, "number is not divisible by 3, 5 and 7")
        }
        
        return  myNum
    }

//    6. Find out if the point (x, y) is inside of the rectangle with the lower-left corner in (lowX, lowY) and the upper-right in (highX, highY).
//        Print inside or not inside depending on the case.
//    ### EXAMPLE
//    1. INPUT:
//    ```swift
//        var x = 1
//        var y = 2
//        var lowX = 1
//        var lowY = 1
//        var highX = 3
//        var highY = 3
//    ```
//    OUTPUT:
//    ```swift
//        "inside"
//    ```
//    2. INPUT:
//    ```swift
//        var x = 4
//        var y = 4
//        var lowX = 0
//        var lowY = 0
//        var highX = 3
//        var highY = 5
//    ```
//    OUTPUT:
//    ```swift
//        "not inside"
//    ```
    func problem6(x: Int, y: Int, lowX: Int, lowY: Int, hightX: Int, hightY: Int)-> Int {
    
        if x >= lowX && y >= lowY && x <= hightX && y <=  hightY {
            print("inside")
        } else {
            print("not inside")
        }
        
        return x
}
    
//    7. You are working on a videogame where the character has a certain number of hitpoints(HP) ranging from 0 to 100.
//        100 represents full health
//        0 represents dead.
//        You want to add regenerating health to the game using the following rules:
//
//        HP always regenerates up to numbers of the form X0 (75 -> 80 , 32 -> 40 …)
//        When HP is below 20 it regenerates up to 20 (13 -> 20, 5 -> 20, …)
//        If the character has 0 HP then he doesn’t regenerate life (he’s dead)
//        Given the current hp of the character stored in a variable hp print the hp the player will have after regenerating life.
//
//    ### EXAMPLE
//    1. INPUT:
//    ```swift
//        var hp = 60
//    ```
//    OUTPUT:
//    ```swift
//        60
//    ```
//    2. INPUT:
//    ```swift
//        var hp = 26
//    ```
//    OUTPUT:
//    ```swift
//        30
//    ```
    
    
    
    func problem7(hp: Int) -> Int {
         
        var hpp = hp
        if hpp > 0 {
        if hpp > 20 {
            if hpp % 10 != 0 {
                hpp += (10-(hp % 10))
        } else {
            hpp += 0
        }
        } else {
            hpp = 20
        }
        } else {
            print(0)
        }

        print("Your life is",hpp)
        
        return hp
        
    }
    
//    8. You are given 3 grades stored in 3 variables of type Double finalsGrade, midtermGrade, projectGrade.
//        These grades are used to compute the grade for a class. finalsGrade represents 50% of the grade.
//        midtermGraderepresents 20% of the grade. projectGrade represents 30% of the final grade.
//        Print the grade for the class.
//
//    ### EXAMPLE
//    1. INPUT:
//    ```swift
//        var finalsGrade = 2.0
//        var midtermGrade = 5.0
//        var projectGrade = 3.0
//    ```
//    OUTPUT:
//    ```swift
//        2.7
//    ```
//    2. INPUT:
//    ```swift
//        var finalsGrade = 5.0
//        var midtermGrade = 5.0
//        var projectGrade = 5.0
//    ```
//    OUTPUT:
//    ```swift
//        5.0
//    ```
    
    
//    func problem8(finalsGrade:  Double, midtermGrade:  Double, projectGrade:  Double) -> Double {
//        0.5 * finalsGrade + 0.2 * midtermGrade  + 0.3 * projectGrade
//
//    }
    
//    9. You have the cost of a meal at a restaurant stored in a variable mealCost of type Double.
//        You would like to leave a tip of a certain percentage. The percentage is stored in a variable tip of type Int.
//        Print the total cost of the meal.
//
//    ### EXAMPLE
//    1. INPUT:
//    ```swift
//        var mealCost:Double = 3.5
//        var tip:Int = 20
//    ```
//    OUTPUT:
//    ```swift
//        4.2
//    ```
//    2. INPUT:
//    ```swift
//        var mealCost:Double = 10.0
//        var tip:Int = 10
//    ```
//    OUTPUT:
//    ```swift
//        11.0
//    ```
    
    func problem9(mealCost: Double, tip: Int) -> Double {
        var tipCost = mealCost * Double(tip) / 100.0
        var totalCost = mealCost + tipCost
        return totalCost
    }
    
    
    
//    10. You are given a variable number of type Double.
//         Create a new function called __rounded__ that return at most 1 digit after the decimal dot.
//         > Do not use native round!
    
    func problem10(number: Double) -> Double{
        var intNumber = Int(number * 10.0)
        var roundedNumber = Double(intNumber) / 10.0
        return roundedNumber
    }
    
//    11. A farmer is harvesting wheat from a number of wheat fields, given in a variable __numberOfFields__ of type Int.
//       Each field produces the same quantity of wheat given in a variable wheatYield of type Double.
//       Sometimes the harvest is increased by 50% due to favorable weather conditions. You are given this information in a variable weatherWasGood of type Bool.
//       Print the total amount of wheat that the farmer will harvest.
//
//   ### EXAMPLE
//   1. INPUT:
//   ```swift
//       var numberOfFields:Int = 5
//       var wheatYield:Double = 7.5
//       var weatherWasGood:Bool = true
//   ```
//   OUTPUT:
//   ```swift
//       56.25
//   ```
//   2. INPUT:
//   ```swift
//       var numberOfFields:Int = 5
//       var wheatYield:Double = 7.5
//       var weatherWasGood:Bool = false
//   ```
//   OUTPUT:
//   ```swift
//       37.5
//   ```
    
    func problem11(numberOfFields: Int, wheatYield: Double) -> Double {
        var weatherWasGood = true
        var totalYield = Double(numberOfFields) * wheatYield
        if (weatherWasGood == true) {
            totalYield = totalYield * 1.5
        }
         print(totalYield)
         return totalYield
    
    }
}
    
    

    

let app = Appliation()
app.problem11(numberOfFields: 5, wheatYield: 7.5)
 
 
 
 
 
 
 
