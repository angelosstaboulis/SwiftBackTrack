//
//  main.swift
//  PermutationString
//
//  Created by Angelos Staboulis on 20/5/24.
//

import Foundation
var finalArray:[Character] = []
func permutationString(phrase:[Character],start:Int,end:Int){
    finalArray = phrase
    if start == end {
         debugPrint(finalArray)
    }else{
        for item in start..<end+1{
            finalArray.swapAt(start, item)
            permutationString(phrase: finalArray, start: start+1, end: end)
            finalArray.swapAt(item, start)
        }
    }
}
permutationString(phrase: ["A","B","C"], start: 0, end: 2)

