//
//  PrototypeMethod.swift
//  CompSciFund
//
//  Created by Madison Adams on 3/16/26.
//


// "the copy"

protocol Shape: AnyObject {
    func clone() -> Shape
}

class Rectangle: Shape {
    private let width: Int
    private let height: Int

    init(_ width: Int, _ height: Int) {
        self.width = width
        self.height = height
    }

    func getWidth() -> Int { return width }
    func getHeight() -> Int { return height }

    func clone() -> Shape {
        // Write your code here
        return Rectangle(width, height)
    }
}


class Square: Shape {
    private let length: Int

    init(_ length: Int) {
        self.length = length
    }

    func getLength() -> Int { return length }

    func clone() -> Shape {
        // initialize a new object of itself.
        return Square(length)
        
    }
}

class Test {
    func cloneShapes(_ shapes: [Shape]) -> [Shape] {
        var clonedShapes: [Shape] = []
        for shape in shapes {
            clonedShapes.append(shape.clone())
            
        }
        return clonedShapes
    }
}

