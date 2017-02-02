//: Playground - noun: a place where people can play

import UIKit

//Given an array of integers, calculate which fraction of its elements are positive, which fraction of its elements are negative, and which fraction of its elements are zeroes, respectively. Print the decimal value of each fraction on a new line.
//
//Note: This challenge introduces precision problems. The test cases are scaled to six decimal places, though answers with absolute error of up to  are acceptable.
//
//Input Format
//
//The first line contains an integer, , denoting the size of the array.
//The second line contains  space-separated integers describing an array of numbers .
//
//Output Format
//
//You must print the following  lines:
//
//A decimal representing of the fraction of positive numbers in the array.
//A decimal representing of the fraction of negative numbers in the array.
//A decimal representing of the fraction of zeroes in the array.
//Sample Input
//
//6
//-4 3 -9 0 4 1
//Sample Output
//
//0.500000
//0.333333
//0.166667
//Explanation
//
//There are  positive numbers,  negative numbers, and  zero in the array.
//The respective fractions of positive numbers, negative numbers and zeroes are ,  and , respectively.

func calculateFractionof(inputArray: [Int]) -> (Void) {
    let arrayLength = Float(inputArray.count)
    
    var positiveIndex: [Float] = []
    var negativeIndex: [Float] = []
    var zeroIndex: [Float] = []
    
    for element in inputArray {
        if element > 0 {
            positiveIndex.append(Float(element))
        } else if element < 0 {
            negativeIndex.append(Float(element))
        } else if element == 0 {
            zeroIndex.append(Float(element))
        }
    }
   let fractionOfPositveNumbers = Float(positiveIndex.count) / arrayLength
   let fractionOfNegativeNumbers = Float(negativeIndex.count) / arrayLength
   let fractionOfZero = Float(zeroIndex.count) / arrayLength
    
    return print("\(fractionOfPositveNumbers)\n\(fractionOfNegativeNumbers)\n\(fractionOfZero)")
}

let arr = [-4, 3, -9, 0, 4, 1]

calculateFractionof(inputArray: arr)

//0.5
//0.333333
//0.166667









