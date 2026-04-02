//
//  AdapterPattern.swift
//  CompSciFund
//
//  Created by Madison Adams on 3/16/26.
//

// wrapping an existing class with a new interface

class SquareHole {
    private let sideLength: Double
    
    init(_ sideLength: Double) {
        self.sideLength = sideLength
    }
    
    func canFit(_ square: Square) -> Bool {
        return sideLength >= square.getSideLength()
    }
}

// target
class Square {
    
    private let sideLength: Double

    init(_ sideLength: Double = 0.0) {
        self.sideLength = sideLength
    }

    func getSideLength() -> Double {
        return sideLength
    }
}

// adaptee
class Circle {
    
    private let radius: Double

    init(_ radius: Double) {
        self.radius = radius
    }

    func getRadius() -> Double { return radius }
}

// adapter
class CircleToSquareAdapter: Square {
    // Write your code here
    private var circle: Circle

    init(_ circle: Circle) {
        self.circle = circle
        super.init(0.0) // need to initialize - parent class Square
    }

    override func getSideLength() -> Double {
        return 2 * circle.getRadius()
    }
}


