import Foundation

var width: Float = 3.4
var height: Float = 2.1

var bucketsOfPaint: Int {
    
    get {
        return Int(ceilf((width * height) / 1.5))
    }
    
    set {
        let totalArea = Double(newValue) * 1.5
        print("\(newValue) buckets can be used to paint \(totalArea) meters")
    }
}

print(bucketsOfPaint)
bucketsOfPaint = 4
