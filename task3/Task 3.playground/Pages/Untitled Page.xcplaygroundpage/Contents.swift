//: [Previous](@previous)

import Foundation

class Application {
    
    //    1. Write all the numbers from 1 to N in alternative order, one number from the left side (starting with one) and one number from the right side (starting from N down to 1).
    //
    //    ### EXAMPLE
    //    INPUT:
    //    ```swift
    //        var N = 9
    //    ```
    //    OUTPUT:
    //    ```swift
    //        1
    //        9
    //        2
    //        8
    //        3
    //        7
    //        4
    //        6
    //        5
    //    ```
    
    func problem1(N: Int) {
        var left: Int = 1
        var right = N
        while left < right {
            print(left)
            print(right)
            left += 1
            right -= 1
        }
        if left == right {
            print(left)
        }
        
    }
    
    //    2. Given an integer __N__ and __ch__ character. Draw a square of N x N __ch__ 's.
    //
    //    ### EXAMPLE
    //    INPUT:
    //    ```swift
    //        var N = 3
    //        var ch = "*"
    //    ```
    //    OUTPUT:
    //    ```swift
    //    ***
    //    ***
    //    ***
    //    ```
    
    func problem2(_ N: Int ) {
        let ch = "*"
        for _ in 1...N {
            for _ in 1...N {
                print(ch, terminator: "")
            }
            print("")
        }
    }
    
    //    3.  Given two integer __N__, __M__ and character __ch__. Draw a rectange of N x M __ch__ 's.
    //
    //    ### EXAMPLE
    //    INPUT:
    //    ```swift
    //        var N = 3
    //        var M = 7
    //        var ch = "*"
    //    ```
    //    OUTPUT:
    //    ```swift
    //    *******
    //    *******
    //    *******
    //    ```
    
    func problem3(N: Int, M: Int) {
        let ch = "*"
        for _ in 1...N {
            for _ in 1...M {
                print(ch, terminator: "")
            }
            print("")
        }
    }
    
    
    
    //    4. Given an integer __N__  and __ch__ character. Draw a triangle of __ch__ 's. The triangle should have N lines, the i-th line should have i __ch__ 's on it.
    //
    //    ### EXAMPLE
    //    INPUT:
    //    ```swift
    //        var N = 3
    //        var ch = "*"
    //    ```
    //    OUTPUT:
    //    ```swift
    //    *
    //    **
    //    ***
    //    ```
    
    func problem4(_ N: Int) {
        let ch = "*"
        for i in 1...N {
            for _ in 1...i {
                print(ch, terminator: "")
            }
            print("")
        }
    }
    
    
    //    5. Given an integer __N__ and __ch__ character. Draw a pyramid of __ch__ 's. The pyramid should have N lines. On the i-th line there should be N-i spaces followed by i(mult)2-1 __ch__ 's.
    //
    //    ### EXAMPLE
    //    INPUT:
    //    ```swift
    //        var N = 3
    //        var ch = "*"
    //    ```
    //    OUTPUT:
    //    ```swift
    //      *
    //     ***
    //    *****
    //    ```
    //
    //
    func problem5(_ N: Int) {
        let ch = "*"
        for i in 1...N {
            for _ in 0..<(N-i) {
                print(" ", terminator: "")
            }
            
            for _ in 1...(2*i-1) {
                print(ch, terminator: "")
            }
            print("")
        }
    }
    
    
    //    6. Given an integer __N__ and __ch__ character. Draw a rhombus of __ch__ 's.
    //
    //    ### EXAMPLE
    //    INPUT:
    //    ```swift
    //        var N = 3
    //        var ch = "*"
    //    ```
    //    OUTPUT:
    //    ```swift
    //      *
    //     ***
    //    *****
    //     ***
    //      *
    //    ```
    
    
    func problem6(_ N: Int){
        let ch = "*"
        for i in 1...N {
            for _ in 0..<(N-i) {
                print(" ", terminator: "")
            }
            
            for _ in 1...2*i-1 {
                print(ch, terminator: "")
            }
            print("")
        }
//        [2, 5]
        for j in 2...N {
            let i = N - j + 1
            for _ in 0..<(N-i) {
                print(" ", terminator: "")
            }
            
            for _ in 1...2*i-1 {
                print(ch, terminator: "")
            }
            print("")
        }
    }
    
    
    //    7. Given an integer __N__ and __ch__ character. Draw a Aztec pyramid of __ch__ 's.
    //
    //    ### EXAMPLE1
    //    INPUT:
    //    ```swift
    //        var N = 2
    //        var ch = "*"
    //    ```
    //    OUTPUT:
    //    ```swift
    //      **
    //      **
    //    ******
    //    ******
    //    ```
    //
    //    ### EXAMPLE2
    //    INPUT:
    //    ```swift
    //        var N = 3
    //        var ch = "*"
    //    ```
    //    OUTPUT:
    //    ```swift
    //        **
    //        **
    //      ******
    //      ******
    //    **********
    //    **********
    //    ```
    
    func problem7(_ N: Int) {
        let ch = "*"
        for i in 1...N {
            for _ in 1...2 {
                for _ in 0..<(N-i) {
                    print("  ", terminator: "")
                }
                
                for _ in 1...2*i-1 {
                    print(ch + "*", terminator: "")
                }
                print("")
            }
        }
    }
    
    //    8. Given an integer N draw a chess board of size N x N. Each line of the chess board should have spaces and number signs(#) alternating.
    //    A space represents a white cell and the number sign a black one. The chess board should be bordered using +, - and |.
    //
    //    ### EXAMPLE1
    //    INPUT:
    //    ```swift
    //        var N = 3
    //    ```
    //    OUTPUT:
    //    ```swift
    //    +---+
    //    |# #|
    //    | # |
    //    |# #|
    //    +---+
    //    ```
    //
    //    ### EXAMPLE2
    //    INPUT:
    //    ```swift
    //        var N = 5
    //    ```
    //    OUTPUT:
    //    ```swift
    //    +-----+
    //    |# # #|
    //    | # # |
    //    |# # #|
    //    | # # |
    //    |# # #|
    //    +-----+
    //    ```
    
    func problem8(_ N: Int){
        // top
        print("+", terminator: "")
        for _ in 1...N {
            print("-", terminator: "")
        }
        print("+")
        
        for i in 1...N {
            //  left
            print("|", terminator: "")
            for j in 1...N {
                if i % 2 == j % 2 {
                    print("#", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            //   right
            print("|")
        }
        
        //   bottom
        print("+", terminator: "")
        for _ in 1...N {
            print("-", terminator: "")
        }
        print("+")
    }
    
    //    9. Write a program that prints the next N leap years starting with leapYear. A leap year is a year containing an extra day.
    //    It has 366 days instead of the normal 365 days. The extra day is added in February, which has 29 daysinstead of the normal 28 days.
    //    Leap years occur every 4 years, 2012 was a leap year and 2016 will be a leap year.
    //    Except that every 100 years special rules apply. Years that are divisible by 100 are not leap years if they are not divisible by 400.
    //    For example 1900 was not a leap year, but 2000 was.
    //
    //    ### EXAMPLE
    //    INPUT:
    //    ```swift
    //        var N = 6
    //        var leapYear = 2016
    //    ```
    //    OUTPUT:
    //    ```swift
    //    2016
    //    2020
    //    2024
    //    2028
    //    2032
    //    2036
    //    ```
    
    func problem9(_ N: Int, _ leapYear: Int) {
        var leap = leapYear
        var count = 0
        
        while count < N {
            print(leap)
            count += 1
            leap += 4
            if leap % 100 == 0 && leap % 400 != 0 {
                leap += 4
            }
        }
    }
    
    //    10. You are given a number. Print the number with the digits in reversed order.
    
    func problem10(_ number: Int){
        var num = number
        
        while num > 0 {
            print(num % 10, terminator: "")
            num /= 10
        }
    }
    
    
    //    11. You are given two numbers a and b. Find and print the greatest common divisor of a and b.
    //        The greatest common divisor of a and b is the largest number that divides both a and b.
    
    
    func problem11(_ a: Int, _ b: Int) {
        let maxDiv = min(a, b)
        var gcd = 1
        
        for i in 1...maxDiv{
            if (a % i == 0 ) && (b % i == 0){
                gcd = i
            }
        }
        
        print(gcd)
    }
    
    
    //12. You are given a number. Decompose number into prime factor and write it as an expression(see examples).
    //
    //### EXAMPLE1
    //INPUT:
    //```swift
    //    var number = 24
    //```
    //OUTPUT:
    //```swift
    //24 = 2 * 2 * 2 * 3
    //```
    //
    //### EXAMPLE2
    //INPUT:
    //```swift
    //    var number = 7
    //```
    //OUTPUT:
    //```swift
    //7 = 7
    //```
    
    func problem12(_ number: Int){
        var num = number
        print("\(num) = ", terminator: "")
        
        var isFirst = true
        
        for i in 2...num {
            if num % i == 0 {
                while (num % i == 0) {
                    num /= i
                    
                    if isFirst {
                        isFirst = false
                    } else {
                        print(" * ", terminator: "")
                    }
                    
                    print(i, terminator: "")
                }
            }
        }
    }
    
    //    13. Find all numbers free of squares less than or equal to N.
    //    A number is free of square if it cannot be divided by any square number except 1.
    //
    //    ### EXAMPLE
    //    INPUT:
    //    ```swift
    //        var N = 30
    //    ```
    //    OUTPUT:
    //    ```swift
    //    1
    //    2
    //    3
    //    5
    //    6
    //    7
    //    10
    //    11
    //    13
    //    14
    //    15
    //    17
    //    19
    //    21
    //    22
    //    23
    //    26
    //    29
    //    30
    //    ```
    
    
    func problem13(_ N: Int){
        print(1)
        
        for i in 2...N {
            var isFree = true
            
            var a = i
            
            for j in 2...a {
                if a % j == 0 {
                    var put = 0
                    while (a % j == 0) {
                        a /= j
                        put += 1
                    }
                    if put > 1 {
                        isFree = false
                    }
                }
            }
            
            if isFree {
                print(i)
            }
        }
    }
}



let app = Application()

app.problem6(5)

