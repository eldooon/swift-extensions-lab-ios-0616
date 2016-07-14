//
//  Extensions.swift
//  Extensions
//
//  Created by Eldon Chan on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    
    func whisper() -> String {
        return self.lowercaseString
    }
    
    func shout() -> String {
        return self.uppercaseString
    }
    
    func pigLatin() -> String {
        
        if self.characters.count == 1 {
            return self
        }
        
        var pigLatin : String = ""
        var split = self.lowercaseString.componentsSeparatedByString(" ")
        
        for (index, _) in split.enumerate() {
            
            var word = split[index]
            let first = (word as NSString).substringToIndex(1)
            word = (word as NSString).substringFromIndex(1)
            word.appendContentsOf(first)
            word.appendContentsOf("ay")
            
            if split[index] != split.last{
                word = word.stringByAppendingString(" ")
            }

            //uncomment the following for pig latin translation for non-name strings so it only cap the first word
//            if split[index] == split.first{
                word = word.capitalizedString
//            }
            
            pigLatin.appendContentsOf(word)
        }
        
        return pigLatin
    }
    
    var points : Int {
        
        var totalPoints = 0
        
        if self.characters.count == 0 {
            return 0
        }
    
        let copySelf = self.lowercaseString
        
        for letter in copySelf.characters {
            
            switch letter {
            case "a", "e", "i", "o", "u":
                totalPoints += 2
            case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " " :
                totalPoints += 0
            default:
                totalPoints += 1
            }
        }
        
        return totalPoints
    }
    
    var unicornLevel : String {
        
        var totalUnicorn = ""
        let removeSpace = self.stringByReplacingOccurrencesOfString(" ", withString: "")
        
        for _ in removeSpace.characters {
            totalUnicorn.appendContentsOf("🦄")
        }
        
        
        return totalUnicorn
    }
    
}

extension Int {
    
    func half() -> Int {
        let half = self / 2
        return half
    }
    
    func isDivisibleBy(number : Int) -> Bool {
        
        if self % number == 0 {
            return true
        }
        
        return false
    }
    
    var squared : Int {
        
        return self * self
    }
    
    var halved : Int {
        
        return half()
    }
}