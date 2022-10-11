//: [Previous](@previous)

import Foundation

//ARRAY Test 1 and 2 were attempts to solve Clement 1 in o(n) time:

var array1 = [9, 6, 3, 0]
var array2 = [8, 6, 4]

var array3 = [11, 9, 6, 3, 0]
var array4 = [7, 5, 2]

var array5 = [11, 10, 10, 7, 6, 6, 1, 0, 0]
var array6 = [8, 7, 6, 1]

//put in func
var lhp = 0
var rhp = 0
var count = array4.count

while count != 0 {
    count = array4.count
    
    if array4.count == 0  {
        print(array3)
        break
    }
    if array3[lhp] < array4[rhp] {
        
        array3.insert(array4[rhp], at: lhp)
        array4.remove(at: rhp)
        lhp += 1
        continue
    }
    if array3[lhp] > array4[rhp] {
        lhp += 1
        continue
    }
    if array3[lhp] == array4[rhp] {
        array3.insert(array4[rhp], at: lhp + 1)
        array4.remove(at: rhp)
        lhp += 2
    }
}

