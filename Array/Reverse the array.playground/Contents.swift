import UIKit

var str = "Reverse an array"

extension Array {
    // Iterative approach
    func reverseArrUsingIterativeApproach() -> Array {
        
        var startIndex  = 0
        var endIndex = self.count - 1
        var output = self
        
        while startIndex < endIndex {
            
            let temp = self[startIndex]
            output[startIndex] = self[endIndex]
            output[endIndex] = temp
            
            startIndex += 1
            endIndex -= 1
        }
        
        return output
    }
    
    // Recursive approach
    func reverseArrUsingRecursiveApproach(arr: inout Array, startIndex: Int, endIndex: Int) {
        
        if startIndex >= endIndex {
            return
        }
        
        let temp = arr[startIndex]
        arr[startIndex] = arr[endIndex]
        arr[endIndex] = temp
        
        reverseArrUsingRecursiveApproach(arr: &arr, startIndex: startIndex + 1, endIndex: endIndex - 1)
    }
}

var arr1 = [1,2,3,4,5]
assert(arr1.reverseArrUsingIterativeApproach() == arr1.reversed())

var arr2 = [1,2,3,4,5]
arr2.reverseArrUsingRecursiveApproach(arr: &arr2, startIndex: 0, endIndex: arr2.count - 1)
assert(arr2 == [5,4,3,2,1])
