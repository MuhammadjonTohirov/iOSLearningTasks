# TASK 6
1. You are working on a game in which your character is exploring a grid-like map. You get the original location of the character and the steps he will take.
A step .Up will increase the y coordinate by 1. A step .Down will decrease the y coordinate by 1. A step .Right will increase the x coordinate by 1. A step .Left will decrease the x coordinate by 1.
Return the final location of the character after all the steps have been taken.

## EXAMPLE
```swift
var location = (x: 0, y: 0)

var steps: [Direction] = [.up, .up, .left, .down, .left]
```
RESULT:
```swift
(-2, 1)
```

2. 1) Define an enumeration named HandShape with three members: .rock, .paper, .scissors.
2) Define an enumeration named MatchResult with three members: .win, .draw, .lose.
3) write a function called match that takes two hand shapes and returns a match result. It should return the outcome for the first player (the one with the first hand shape).

## EXAMPLE
```swift
match(.rock, .scissors)
```
RESULT:
```swift
.win
```

3. You are given 2 tuples of a, b type (Int,Int) representing fractions. The first value in the tuple represents the numerator, the second value represents the denominator. Create a new tuple sum of type (Int,Int) that holds the sum of the fractions.

## EXAMPLE:
```swift
var a = (5,8)
var b = (17,9)
```

RESULT:
```swift
sum = (181, 72)
```

4. You are given the CoinType enumeration which describes different coin values and moneyArray which has tuples(ammount, coinType). Return the total value of the coins in the array.

## EXAMPLE:
```swift
var moneyArray:[(Int,CoinType)] = [(10,.penny),
    (15,.nickle),
    (3,.quarter),
    (20,.penny),
    (3,.dime),
    (7,.quarter)]
```

RESULT:
```swift
385
```

5. You are given an array of strings stored in the variable strings. Create a new array named countedStringscontaining values of type (String,Int). Each tuple contains a string from the strings array followed by an integer indicating how many times it appears in the strings array. Each string should only appear once in thecountedStrings array.

## EXAMPLE:
```swift
var strings = ["tuples", "are", "awesome", "tuples", "are", "cool", 
    "tuples", "tuples", "tuples", "shades"]
```
RESULT:
```swift
countedStrings = [
    "tuples" : 5,
    "are" : 2,
    "awesome" : 1,
    "cool" : 1,
    "shades" : 1
]
```

6. You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a message which contains only lowercase letters and spaces. Use the code dictionary to encode the message and return it.

7. You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a encodedMessage which contains only lowercase letters and spaces. Use the code dictionary to decode the message and return it.

8. You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.

9. You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space.

10. You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the best score and print his full name.

11. You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Print the leaderboard in the following format:

```swift
1. full name - score
2. ...
...
```

12. You are given an array of integers. Find out the frequency of each one.
The frequency of a number is the number of times it appears in the array.
Print the numbers in ascending order followed by their frequency.
