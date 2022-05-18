//: [Previous](@previous)

import Foundation


class Appliation {
    
    //    1. Write a function named __parse(digit:)__ that takes a string with one character as parameter.
    //       The function should return -1 if the input is not a digit character and the digit otherwise.
    
    func parse(digit: String) -> Int {
        if digit.count == 1 {
            return Int(digit) ?? -1
        }
        
        return -1
    }
    
 
    //    2. Write a function named __timeDifference__. It takes as input four numbers that represent two times in a day and returns the difference in minutes between them.
    //      The first two parameters __firstHour__ and __firstMinute__ represent the hour and minute of the first time. The last two __secondHour__ and __secondMinute__ represent the hour and minute of the second time.
    //      All parameters should have external parameter names with the same name as the local ones.
    
    
    func timeDifference(firstHour: Int,
                  firstMinut: Int,
                  secondHour: Int,
                  secondMinut: Int) -> Int {
        
        
        var hourDifference =  secondHour - firstHour
        var minnuteDifference = secondMinut - firstMinut
        
        if minnuteDifference < 0 {
            hourDifference -= 1
            minnuteDifference += 60
        }
        
        return hourDifference * 60 + minnuteDifference
    }
    
//    3. Write a function named __verify__ that takes a string expression of open and closed parentheses ((, )) and returns true if they are correctly paired and false otherwise.
    

    func verify(expression: String) -> Bool {
        var open = 0
        var closed = 0
        for char in expression {
            let character = "\(char)"
            if character == "(" {
                open += 1
                
            }
            
            if character == ")" {
                closed += 1
            }
        }
        
        return open == closed
    }
    
    
//    4. Mario uses energy points to walk and jump. He can jump maximum maxJump meters up or down. You have the height of each 1 meter portion of a level in the heights array.
//      Determine if Mario can finish the level and how much energy he needs to do it. Mario uses 1 energy point to walk one meter and 2 * jumpHeight energy points to jumpHeightmeters.
//      Write a function named levelCost that takes heights and maxJump as parameters and returns -1 if Mario cannot finish the level or the total energy cost that he would need to finish the level.
//      In the beginning Mario will be on the first 1 meter section of the level and the heights array will always have more than one element. All heights have a value greater or equal to 1.
    
    
    func levelCost(heights: [Int], maxJump: Int) -> Int {
        var totalEnergy = 0
        var lastHeight = 0

        for height in heights {
            if lastHeight == 0 {
                lastHeight = height
            } else {
                let jumpHeight = abs(lastHeight - height)
    
                if jumpHeight > maxJump {
                    return -1
                }
    
                if jumpHeight == 0 {
                    totalEnergy += 1
                } else {
                    totalEnergy += 2 * jumpHeight
                }
    
                lastHeight = height
            }
        }
    
        return totalEnergy
    }
    
    
//    5.  __queue__ is a data structure that can perform two operations:
//         push which takes a value and adds it at the end of the queue
//         pop which returns the value from the start of the queue and removes it from the queue
//       Your task is to implement the push and pop operations. The most simple way to represent a queue is using an array. Here are some example operations:
//
//   ```swift
//   // here we define an empty queue
//   var queue: [Int] = []
//
//   // add 1 in the queue
//   push(1, &queue) // queue = [1]
//
//   // add 2 in the queue
//   push(2, &queue) // queue = [1, 2]
//
//   // pop the first element
//   pop(&queue) // 1, queue = [2]
//
//   // add 3 in the queue
//   push(3, &queue) // queue = [2, 3]
//
//   // pop the first element
//   pop(&queue) // 2, queue = [3]
//
//   // pop the first element
//   pop(&queue) // 3, queue = []
//
//   // pop the first element
//   pop(&queue) // returns nil because there are no elements in the queue
//   // queue = []
//   ```
    
    
    func push(_ number: Int, _ queue: inout [Int]) {
        var que = queue
        que.append(number)
    }


    func pop(_ queue: inout [Int]) -> Int? {
        var que  = queue
        let result = que.first

        if !que.isEmpty {
            que.remove(at: 0)
        }

        return result
    }
    
//    6. A stack is a data structure that can perform three operations:
//        push adds a value on the top of the stack
//        top returns the value from the top of the stack
//        pop returns the value from the top of the stack and removes it from there
//      Your task is to implement the push, top and pop operations. The most simple way to represent a stack is using an array. Here are some example operations.
//    ```swift
//    var stack: [Int] = []
//
//    push(1, &stack) // stack = [1]
//
//    push(2, &stack) // stack = [1, 2]
//
//    pop(&stack) // 2, stack = [1]
//
//    push(3, &stack) // stack = [1, 3]
//
//    pop(&stack) // 3, stack = [1]
//
//    pop(&stack) // 1, stack = []
//
//    pop(&stack) // returns nil because there are no elements in the stack
//    // stack = []
    
    func stackPush(_ number: Int, _ stack: inout [Int]) {
        stack.append(number)
    }

    func stackTop(_ stack: [Int]) -> Int? {
        return stack.first
    }

    func stackPop(_ stack: inout [Int]) -> Int? {
        let result = stackTop(stack)

        if stack.count > 0 {
            stack.remove(at: stack.count - 1)
        }

        return result
    }
    
//    7. Write a function named __mult__ that takes two numbers as arguments and returns multiplication of these numbers. Do not use * sign, loop operations.
    
    func mult(_ a: Int, _ b: Int) -> Int {
        a * b
    }
    
   func multt(_ a: Int, _ b: Int) -> Int {
       if (b == 0 ){
           return 0
       }
       if (b > 0) {
           return (a + multt(a, b-1))
       }
       
       if (b < 0){
           return -multt(a, -b)
       }
       return b
    }

//    8. Write a function named applyKTimes that takes an integer K and a closure and calls the closure K times. The closure will not take any parameters and will not have a return value.
//
//    ## EXAMPLE1
//    Function call:
//    ```swift
//    applyKTimes(3) {
//        print("We Heart Swift")
//    }
//    ```
//    Output:
//    ```swift
//    We Heart Swift
//    We Heart Swift
//    We Heart Swift
//    ```
    
    func applyKTimes(_ K: Int, _ closure: () -> ()) {
        for _ in 1...K {
            closure()
        }
    }
    
//    9. Use filter to create an array called multiples that contains all the multiples of 3 from numbers.
    
    func problem9(numbers: [Int]) {
        let multiples = numbers.filter{$0 % 3 == 0}
        print(multiples)
    }
    
//    10. Find the largest number from numbers and then print it. Use reduce to solve this exercise.
    
    func problem10(numbers: [Int]) {
        let max = numbers.reduce(numbers[0]) {
            if $0 > $1 {
                return $0
            } else {
                return $1
            }
        }
        
        print(max)
    }
    
//    11. Join all the strings from strings into one using reduce. Add spaces in between strings.
    
    func problem11(_ strings: [String]) {
        let string = strings.reduce("") {
            return $0 + $1 + " "
        }
        
        print(string)
    }
    
//    12. Find the sum of the squares of all the odd numbers from numbers. Use map, filter and reduce to solve this problem.
    
    func problem12(_ numbers: [Int]) {
        let sum = numbers.filter {
            $0 % 2 == 1
        }.map {
            $0 * $0
        }.reduce(0, +)

        print(sum)
    }
    
//    13. Implement a function forEach(array: [Int], _ closure: Int -> ()) that takes an array of integers and a closure and runs the closure for each element of the array.
//
//    ## EXAMPLE1
//    Function call:
//    ```swift
//    forEach([1, 2, 3, 4]) {
//        print($0 + 1)
//    }
//    ```
//    Output:
//    ```swift
//    2
//    3
//    4
//    5
//    ```
 
    func forEach(_ array: [Int], _ closure: (Int) -> () ){
        for number in array {
            closure(number)
        }
    }
}
    
    
 

let app = Appliation()

app.applyKTimes(6, {
    print("We heart swift")
})


//var stack: [Int] = [1, 2, 3]
//app.stackPush(5, &stack)
//print(stack)
//app.stackPop(&stack)
//print(stack)
 


//func loop(i: Int, jump: Int = 1, max: Int, handler: @escaping (Int) -> Void) {
//    if i == max {
//        return
//    } else {
//        handler(i)
//        loop(i: i + jump, max: max, handler: handler)
//    }
//}
//
//func mult(a: Int, b: Int) -> Int {
//    var result: Int = 0
//
//    loop(i: 0, max: b) { _ in
//        result += a
//    }
//
//    return result
//}
//
//print(mult(a: 3, b: 5))
//

