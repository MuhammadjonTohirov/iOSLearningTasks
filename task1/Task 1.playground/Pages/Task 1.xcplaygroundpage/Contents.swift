
import UIKit
import Foundation

class Application {
    func problem1(year: Int) -> Int {
        let minSecond = 60
        let hourSecond = minSecond * 60
        let daySecond = hourSecond * 24
        return daySecond * 365 * year
    }
    
    func problem2(width: Int, height: Int) -> Int {
        let numberOfPixel = width * height
        return numberOfPixel
    }
    
    func problem3(sum: Int, difference: Int) -> (a: Int, b: Int) {
        let a = (sum + difference) / 2
        let b = (sum - difference) / 2
        
        return  (a, b)
    }
    
    func swap<T>(_ a: inout T, _ b: inout T) {
        (a, b) = (b, a)
    }
    
    func lastDigit(a: Int) -> Int {
        a % 10
    }
    
    func humanAge(dogAge: Int) -> Double {
        Double(dogAge) / 7
    }
    
    func age(x: Int, y: Int) -> Int {
        let bob = 12
        
        let alice = (bob + x) * y - x
        
        return alice
    }
    
    func problem8(_ x: Int) {
        let maxExchangableApples = x / 5 * 5
        let oranges = maxExchangableApples / 5 * 3
        let apples = x - maxExchangableApples
        
        print("Get \(oranges) oranges form Bob")
        print("Left \(apples) apples on basket")
    }
    
    func clas(numberOfBoys: Double, numberOfGirls: Double) -> (boys: Int, girls: Int) {
        let fullclass = numberOfBoys + numberOfGirls
        let percentageOfBoys = numberOfBoys / fullclass * 100
        let percentageOfGirls = numberOfGirls / fullclass * 100
        
        return (Int(percentageOfBoys), Int(percentageOfGirls))
    }
    
    func pling(sounds: inout String, number: inout Int) {
        
        if number % 3 == 0 {
            sounds += "Pling"
        }
        
        if number % 5 == 0 {
            sounds += "Plang"
        }
        
        if number % 7 == 0 {
            sounds += "Plong"
        }
        
        if sounds.isEmpty {
            sounds = String(number)
        }
    }
}


let app = Application()
