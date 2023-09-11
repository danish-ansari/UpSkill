//
//  StringReverse.swift
//  UpSkill
//
//  Created by danish on 11/09/23.
//

import Foundation

struct StringReverse{
    static func reverseString(str: String) -> String{
        let strArray = Array(str)
        var newArray: [Character] = []
        for i in stride(from: strArray.count - 1, through: 0, by: -1){
            newArray.append(strArray[i])
        }
        return String(newArray)
    }
    
    static func reverse1(str: String) -> String{
        var newStr = ""
        for char in str{
            newStr = "\(char)" + newStr
        }
        return newStr
    }
    
    static func reverse2(str: String) -> String{
        var newStr = str
        var str2 = ""
        for _ in str{
            if let char = newStr.popLast(){
                str2.append("\(char)")
            }
            
        }
        return str2
    }
    
    static func reverse3(s: String) -> String{
        var arrStr = Array(s)
    
        var left = 0
        var right = arrStr.count - 1
        while (left < right){
            (arrStr[left], arrStr[right]) = (arrStr[right], arrStr[left])
            left += 1
            right -= 1
        }
        return String(arrStr)
    }
    
    static func reverse4(_ str: inout String){
        if(str.count == 1){
            print(str)
        }
        else{
            if let char = str.popLast(){
                print(char)
            }
            reverse4(&str)
        }
    }
    
    static let funStr = """
    static func reverseString(str: String) -> String{

    let strArray = Array(str)
    var newArray: [Character] = []

    for i in stride(from: strArray.count - 1, through: 0, by: -1){
        newArray.append(strArray[i])
    }

    return String(newArray)
}
"""
}
