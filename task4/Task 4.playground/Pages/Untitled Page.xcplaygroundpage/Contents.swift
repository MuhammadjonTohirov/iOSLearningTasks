//: [Previous](@previous)

import Foundation

class Application {
    
    //    1. You are given two numbers a and b. Compute the sum of a and b and create a string stored in a variable __namedformattedSum__ that contains the sum written like bellow:
    //    ```swift
    //    For a = 2 and b = 5
    //
    //    formattedSum = "2 + 5 = 7"
    //
    //    For a = 12 and b = 19
    //
    //    formattedSum = "12 + 19 = 31"
    //    ```
    
    func probelm1(a: Int, b: Int) {
        let namedformattedSum = a + b
        let formattedSum = "\(a) + \(b) = \(namedformattedSum)"
        print(formattedSum)
    }
    
    //    2. You are given a string stored in the variable __aString__. Create new string named replacedString that contains the characters of the original
    //    string with all the occurrences of the character "e" replaced by "#".
    
    func problem2(aString: String) {
        let replasedString = aString.map({ char -> Character in
            if char == "e" {
                return "#"
            }
            
            return char
        })
        
        print(replasedString.reduce(into: "", {a, b in a = a + "\(b)"}))
    }
    
    
    
    //    3. You are given a string stored in variable __aString__. Create a new string called reverse that contains the original string in reverse order.
    
    @discardableResult
    func problem3(name: String) -> String {
        return name.reversed().reduce(into: "", {a, b in a = a + "\(b)"})
    }
    
    //    4. Return __true__ if __aString__ is a palindrome, and __false__ otherwise. A palindrome is a string which reads the same backward or forward.
    
    func problem4(aString: String) {
        let isPalindrome = problem3(name: aString) == aString
        print(isPalindrome ? "True" : "False")
    }
    
    //    5. Print words from sentence.
    
    func problem5(aString: String) {
        print(aString.components(separatedBy: " "))
    }
    
    //    6. Find long word from sentence.
    
    func problem6(aString: String){
        print(aString.components(separatedBy: " ").max(by: {$0.count < $1.count}) ?? "")
    }
    
    //    7. Find the maximum value from __listOfNumbers__.
    func problem7(listOfNumbers: [Int]){
        
        print(listOfNumbers.max()!)
    }
    
    //    8. Reverse the order of the elements in __listOfNumbers__ without creating any additional arrays.
    func problem8(listOfNumbers: [Int]) {
        var num = listOfNumbers
        var firstIndex = 0
        var lastIndex = num.count - 1
        
        while firstIndex < lastIndex {
            let tmp = num[firstIndex]
            num[firstIndex] = num[lastIndex]
            num[lastIndex] = tmp
            
            firstIndex += 1
            lastIndex -= 1
        }
        print(num)
    }
    
    //    9. Sort the values in __listOfNumbers__ in descending order.
    
    func probelm9(listOfNumbers: [Int]) {
        print(listOfNumbers.sorted(by: {$0 > $1}))
    }
    
    //    10. Return all the elements from __otherNumbers__ that appear in __listOfNumbers__. Don’t print anything if __listOfNumbers andotherNumbers__ have no common elements.
    func problem10(listOfNumbers: [Int], otherNumbers: [Int]) {
        
        for otherNumbers in otherNumbers {
            for numbers in listOfNumbers {
                if numbers == otherNumbers {
                    print(numbers)
                    break
                }
            }
        }
    }
    
    
    //    11. Find and store the digits of __number__ from left to right in an array __digits__.
    
    func problem11(number: Int) {
        let digits = "\(number)".compactMap({Int("\($0)")})
        print(digits)
    }
    
    //    12. Create a list __unique__ with all the unique numbers from __listOfNumbers__.
    func problem12(listOfNumbers: [Int]) {
        print(Set(listOfNumbers))
    }
    
    
}




let app = Application()

app.problem12(listOfNumbers: [1,1,3,5,2,-1])

