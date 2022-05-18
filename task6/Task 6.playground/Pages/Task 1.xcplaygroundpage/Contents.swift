//: [Previous](@previous)

import Foundation
import XCPlayground


class Appliation {
    
    
    //    1. You are working on a game in which your character is exploring a grid-like map. You get the original location of the character and the steps he will take.
    //    A step .Up will increase the y coordinate by 1. A step .Down will decrease the y coordinate by 1. A step .Right will increase the x coordinate by 1. A step .Left will decrease the x coordinate by 1.
    //    Return the final location of the character after all the steps have been taken.
    //
    //    ## EXAMPLE
    //    ```swift
    //    var location = (x: 0, y: 0)
    //
    //    var steps: [Direction] = [.up, .up, .left, .down, .left]
    //    ```
    //    RESULT:
    //    ```swift
    //    (-2, 1)
    //    ```
    
    enum Direction {
        case up
        case down
        case left
        case right
    }
    
    
    func problem1(x: inout Int, y: inout Int) {
        let steps: [Direction] = [.up, .up, .left, .down, .left]
        for step in steps {
            switch step {
            case .up:
                y += 1
            case .down:
                y -= 1
            case .right:
                x += 1
            case .left:
                x -= 1
            default:
                break
            }
        }
    }
    
    //    2. 1) Define an enumeration named HandShape with three members: .rock, .paper, .scissors.
    //    2) Define an enumeration named MatchResult with three members: .win, .draw, .lose.
    //    3) write a function called match that takes two hand shapes and returns a match result. It should return the outcome for the first player (the one with the first hand shape).
    //
    //    ## EXAMPLE
    //    ```swift
    //    match(.rock, .scissors)
    //    ```
    //    RESULT:
    //    ```swift
    //    .win
    //    ```
    
    enum HandShape {
        case rock
        case paper
        case sicissiors
    }
    
    enum MatchResult {
        case win
        case down
        case lose
    }
    
    func probelm2(_ first: HandShape, _ second: HandShape) -> MatchResult {
        
        if first == second {
            return .down
        }
        if first == .rock && second == .sicissiors {
            return .win
        }
        if first == .paper && second == .rock {
            return .win
        }
        if first == .sicissiors && second == .paper {
            return .win
        }
        
        return .lose
    }
    
    //    3. You are given 2 tuples of a, b type (Int,Int) representing fractions. The first value in the tuple represents the numerator, the second value represents the denominator. Create a new tuple sum of type (Int,Int) that holds the sum of the fractions.
    //
    //    ## EXAMPLE:
    //    ```swift
    //    var a = (5,8)
    //    var b = (17,9)
    //    ```
    //
    //    RESULT:
    //    ```swift
    //    sum = (181, 72)
    //    ```
    
    func probelm3(a: (Int, Int), b: (Int, Int))  {
        
        let numerator = a.0 * b.1 + b.0 * a.1
        let denominator = a.1 * b.1
        let sum = (numerator, denominator)
        
        print(sum)
    }
    
    
    
    
    //    4. You are given the CoinType enumeration which describes different coin values and moneyArray which has tuples(ammount, coinType). Return the total value of the coins in the array.
    //
    //    ## EXAMPLE:
    //    ```swift
    
    //    var moneyArray:[(Int,CoinType)] = [(10,.penny),
    //        (15,.nickle),
    //        (3,.quarter),
    //        (20,.penny),
    //        (3,.dime),
    //        (7,.quarter)]
    //    ```
    //
    //    RESULT:
    //    ```swift
    //    385
    //    ```
    
    enum CoinType: Int {
        case penny = 1
        case nickle = 5
        case dime = 10
        case quarter = 25
    }
    
    func probelm4() {
        let moneyArray:[(Int,CoinType)] = [(10,.penny), (15,.nickle), (3,.quarter),(20,.penny), (3,.dime), (7,.quarter)]
        
        var totalMoney = 0
        
        for (amount, coinType) in moneyArray {
            totalMoney += amount * coinType.rawValue
        }
        
        print(totalMoney)
    }
    
    
    
    
    //5. You are given an array of strings stored in the variable strings. Create a new array named countedStringscontaining values of type (String,Int). Each tuple contains a string from the strings array followed by an integer indicating how many times it appears in the strings array. Each string should only appear once in thecountedStrings array.
    //
    //## EXAMPLE:
    //```swift
    //var strings = ["tuples", "are", "awesome", "tuples", "are", "cool",
    //    "tuples", "tuples", "tuples", "shades"]
    //```
    //RESULT:
    //```swift
    //countedStrings = [
    //    "tuples" : 5,
    //    "are" : 2,
    //    "awesome" : 1,
    //    "cool" : 1,
    //    "shades" : 1
    //]
    //```
    
    
    func problem5(strings: [String]) {
        var countedStrings: [(String,Int)] = []
        
        for string in strings {
            var alreadyExists = false
            
            for i in 0..<countedStrings.count {
                if (countedStrings[i].0 == string) {
                    countedStrings[i].1 += 1
                    alreadyExists = true
                }
            }
            if alreadyExists == false {
                _ = (string,1)
                countedStrings.append((string,1))
            }
            
        }
        print(countedStrings)
        
    }
    
    
    //    6. You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a message which contains only lowercase letters and spaces. Use the code dictionary to encode the message and return it.
    
    func problem6(message: String ){
        
        let code = [
            "a" : "b",
            "b" : "c",
            "c" : "d",
            "d" : "e",
            "e" : "f",
            "f" : "g",
            "g" : "h",
            "h" : "i",
            "i" : "j",
            "j" : "k",
            "k" : "l",
            "l" : "m",
            "m" : "n",
            "n" : "o",
            "o" : "p",
            "p" : "q",
            "q" : "r",
            "r" : "s",
            "s" : "t",
            "t" : "u",
            "u" : "v",
            "v" : "w",
            "w" : "x",
            "x" : "y",
            "y" : "z",
            "z" : "a"
        ]
        
        var encodedMessage = ""
        
        for char in message {
            let charecter = "\(char)"
            if let encodedChar = code[charecter] {
                encodedMessage += encodedChar
            } else {
                encodedMessage += charecter
            }
            
        }
        print(encodedMessage)
        
    }
    
    
    //  7  You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a encodedMessage which contains only lowercase letters and spaces. Use the code dictionary to decode the message and return it.
    
    func problem7(encodedMessage: String) {
        
        let code = [
            "a" : "b",
            "b" : "c",
            "c" : "d",
            "d" : "e",
            "e" : "f",
            "f" : "g",
            "g" : "h",
            "h" : "i",
            "i" : "j",
            "j" : "k",
            "k" : "l",
            "l" : "m",
            "m" : "n",
            "n" : "o",
            "o" : "p",
            "p" : "q",
            "q" : "r",
            "r" : "s",
            "s" : "t",
            "t" : "u",
            "u" : "v",
            "v" : "w",
            "w" : "x",
            "x" : "y",
            "y" : "z",
            "z" : "a"
        ]
        
        var decoder: [String : String] = [:]
        
        
        for (key, value) in code {
            decoder[value] = key
            
        }
        
        var decodedMessage = ""
        
        for char in encodedMessage {
            let charecter = "\(char)"
            
            if let decodedChar = decoder[charecter] {
                decodedMessage += decodedChar
            } else {
                decodedMessage += charecter
            }
        }
        print(decodedMessage)
    }
    
    
    //    8. You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.
    
    
    func probelm8() {
        
        let people: [[String:String]] = [
            [
                "firstName": "Calvin",
                "lastName": "Newton"
            ],
            [
                "firstName": "Garry",
                "lastName": "Mckenzie"
            ],
            [
                "firstName": "Leah",
                "lastName": "Rivera"
            ],
            [
                "firstName": "Sonja",
                "lastName": "Moreno"
            ],
            [
                "firstName": "Noel",
                "lastName": "Bowen"
            ]
        ]
        
        var firstNames: [String] = []
        
        for person in people {
            if let firstName = person["firstName"] {
                print(firstName)
                firstNames.append(firstName)
            }
        }
    }
    
//
//    9. You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space.

    
    
    func probelm9() {
        
        var people: [[String:String]] = [
            [
                "firstName": "Calvin",
                "lastName": "Newton"
            ],
            [
                "firstName": "Garry",
                "lastName": "Mckenzie"
            ],
            [
                "firstName": "Leah",
                "lastName": "Rivera"
            ],
            [
                "firstName": "Sonja",
                "lastName": "Moreno"
            ],
            [
                "firstName": "Noel",
                "lastName": "Bowen"
            ]
        ]
        
        var fullNames: [String] = []
        
        for person in people {
            if let firstName = person["firstName"] {
                if let lastName = person["lastName"] {
                    let fullName = "\(firstName) \(lastName)"
                    fullNames.append(fullName)
                }
            }
        }
        print(fullNames)
        
    }
    
    
//    10. You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the best score and print his full name.
    
    
    func probelm10() {
        
        var people: [[String:Any]] = [
            [
                "firstName": "Calvin",
                "lastName": "Newton",
                "score": 13
            ],
            [
                "firstName": "Garry",
                "lastName": "Mckenzie",
                "score": 23
            ],
            [
                "firstName": "Leah",
                "lastName": "Rivera",
                "score": 10
            ],
            [
                "firstName": "Sonja",
                "lastName": "Moreno",
                "score": 3
            ],
            [
                "firstName": "Noel",
                "lastName": "Bowen",
                "score": 16
            ]
        ]

        var topPerson = people[0]
        var bestScore = topPerson["score"] as! Int

        for person in people {
            if let score = person["score"] as? Int {
                if bestScore < score  {
                    bestScore = score
                    topPerson = person
                }
            }
        }

        if let first = topPerson["firstName"] as? String,
           let second = topPerson["lastName"] as? String  {
            print("\(first) \(second)")
        }
 
    }
    
//    11. You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Print the leaderboard in the following format:
//
//    ```swift
//    1. full name - score
//    2. ...
//    ...
//    ```
    
    
    func problem11() {
        var people: [[String:Any]] = [
            [
                "firstName": "Calvin",
                "lastName": "Newton",
                "score": 13
            ],
            [
                "firstName": "Garry",
                "lastName": "Mckenzie",
                "score": 23
            ],
            [
                "firstName": "Leah",
                "lastName": "Rivera",
                "score": 10
            ],
            [
                "firstName": "Sonja",
                "lastName": "Moreno",
                "score": 3
            ],
            [
                "firstName": "Noel",
                "lastName": "Bowen",
                "score": 16
            ]
        ]

        func compareScores(_ first: [String:Any], second: [String:Any]) -> Bool {
            if let a = first["score"] as? Int {
                if let b = second["score"] as? Int {
                    return a > b
                }
            }
            return false
        }

        people.sort(by: compareScores)

        for (index, person) in people.enumerated() {
            if let firstName = person["firstName"] as? String {
                if let lastName = person["lastName"] as? String  {
                    if let score = person["score"] as? Int {
                        print("\(index + 1). \(firstName) \(lastName) - \(score)")
                    }
                }
            }
        }
    }
    
//    12. You are given an array of integers. Find out the frequency of each one.
//    The frequency of a number is the number of times it appears in the array.
//    Print the numbers in ascending order followed by their frequency.
    
    func problem12() {
        
        let numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]

        var frequency: [Int:Int] = [:]
        var uniqueNumbers: [Int] = []

        for number in numbers {
            if let oldFr = frequency[number] {
                frequency[number] = oldFr + 1
            } else {
                uniqueNumbers.append(number)
                frequency[number] = 1
            }
        }

        uniqueNumbers.sort(by: <)

        for number in uniqueNumbers {
            print("\(number) \(frequency[number]!)")
        }
    }
    
    
}


let app = Appliation()
app.problem12()




