//: Playground - noun: a place where people can play

import UIKit



func findSum(in myArray: [Int]) -> Int {
    
    let sum = myArray.reduce(0) {$0 + $1}
    
    return sum
}

let arr = [1, 3, 2]

findSum(in: arr) // 6