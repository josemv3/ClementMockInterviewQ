//: [Previous](@previous)

import Foundation

var array1 = ["A", "B", "C"]
var array2 = ["C"]
var array3 = [array1] + [array2]

//Write a function that takes an array of words as a parameter, and returns the words grouped by anagrams.
//Ordering inside the grouped anagrams does not matter.
//We can safely assume that all words are lowercase letters

//Examples:
//[eat, foo, bar, ate, oof, tea] -> [[eat, ate, tea], [foo, oof], [bar]]
//[eat, foo, bar] -> [[eat], [foo], [bar]]

let test1 = ["eat", "foo", "bar", "ate", "oof", "tea"]
let test2 = ["eat", "foo", "bar"]
let test3 = [""]

func getAnagrams(wordArray: [String]) -> [String: [String]] {
    var anagramDict: [String: [String]] = [:]
    
    if wordArray.isEmpty {
        return [:]
    }
    for word in wordArray {
        let wordSorted = word.sorted()
        
        if anagramDict[String(wordSorted)] == nil {
            anagramDict[String(wordSorted)] = [word]
        } else {
            anagramDict[String(wordSorted)]?.append(word)
        }
    }
    return anagramDict
}
getAnagrams(wordArray: test1)
getAnagrams(wordArray: test2)
getAnagrams(wordArray: test3)

//.sort each word == eachother
//
//for word in array

//  wordSorted = word.sorted
//  wordSordetArray.append(wordSorted)
//  if wordSorted ==

//use a dictionary
//if wordSoreted == key, key = word

//add sorted word to array
//use .contains
