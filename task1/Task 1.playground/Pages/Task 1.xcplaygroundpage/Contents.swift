
import UIKit
import Foundation

// 1

//func secondsIn(year: Int) -> Int {
//    let minSecond = 60
//    let hourSecond = minSecond * 60
//    let daySecond = hourSecond * 24
//    return daySecond * 365 * year
//}
//
//print(secondsIn(year: 1))


// 2


//func getCustom(widh: Int, height: Int) -> Int {
//var numberOfPixel = widh + height * 2
//
//    return numberOfPixel
//}
//
//print(getCustom(widh: 1080, height: 720))


// 3

//func custom(total: Int, difference: Int) -> Int {
//    let a = (total + difference) / 2
//    let b = total - a
//    print("A = \(a) B = \(b) Total = \(a + b)")
//    return  a + b
//}
//print( custom(total: 25, difference: 5))

// 4

 
//var a = 2
//var b = 3
//// custom(a, b)
//// pass by value                         manzili o'zgarmedi
//// pass by reference                     manzili o'zgaradi
//print(a, b)
//
//func swap(a: inout Int, b: inout Int) {
//    let t = a
//    a = b
//    b = t
//}
//
//swap(a: &a, b: &b)
//
//print(a, b)

// 5

//var salom = "Hi"
//var janob = "Mr"
//
//func swap<T>(_ a: inout T, _ b: inout T) {
//     (a, b) = (b, a)
//}
//
//
//
//swap(&salom, &janob)
//print(salom, janob)
 
 

// 6


//func digit(a: Int) -> Int {
//
//    return a % 10
//}
//
//print(digit(a: 2004))

// 7

//func age(rockyAge: Double ) -> Double {
//
//    var humanAge = Double()
//    humanAge = rockyAge/7
//    humanAge *= 12
//    if humanAge > 12 {
//        humanAge /= 12
//        print( Int(humanAge), "Year HumanAge" )
//    } else {
//        print( Int(humanAge), "Month HumanAge" )
//    }
//
//    return humanAge
//}
//  print(age(rockyAge: 12))


// 8

//func age(x: Int, y: Int) -> Int {
//  var bob = 12
//  let alice = (bob + x) * y - x
//
//    return alice
//}
//
//print(age(x: 3, y: 2))

// 9


//func fruit(apples: Double) -> Int {
//    var orange = Int()
//    var orangeMock = Double()
//
//    orangeMock = apples * 0.6
//    orange = Int(orangeMock)
//
//    return orange
//}
//
//    print(fruit(apples: 23))


// 10


//var numberOfBoys  = Double(5)
//var numberOfGirls = Double(5)
//
//func clas(numberOfBoys: inout Double, numberOfGirls: inout Double){
//
//    var fullclass = numberOfBoys + numberOfGirls
//        numberOfBoys = numberOfBoys / fullclass * 100
//        numberOfGirls = numberOfGirls / fullclass * 100
//}
// clas(numberOfBoys: &numberOfBoys, numberOfGirls: &numberOfGirls)
// print(Int(numberOfBoys), Int(numberOfGirls))

     
// 11

//var sounds = String()
//var number = Int(15)

//func pling(sounds: inout String, number: inout Int) {
//
//    if number % 3 == 0 {
//        sounds += "Pling"
//    }
//
//    if number % 5 == 0 {
//    sounds += "Plang"
//
//    }
//
//    if number % 7 == 0 {
//    sounds += "Plong"
//    }
//
//    if sounds.isEmpty {
//        sounds = String(number)
//    }
//}
//
//pling(sounds: &sounds, number: &number)
//print(sounds)
    
