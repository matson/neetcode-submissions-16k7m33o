//
//  StrategyPattern.swift
//  CompSciFund
//
//  Created by Madison Adams on 3/17/26.
//

import Foundation


class Person {
    private let lastName: String
    private let age: Int
    private let married: Bool

    init(_ lastName: String, _ age: Int, _ married: Bool) {
        self.lastName = lastName
        self.age = age
        self.married = married
    }

    func getLastName() -> String { return lastName }
    func getAge() -> Int { return age }
    func isMarried() -> Bool { return married }
}

// interface
protocol PersonFilter {
    func apply(_ person: Person) -> Bool
}

// under interface
class AdultFilter: PersonFilter {
    // Implement Adult filter
    // filters people who are 18 years or older
    func apply(_ person: Person) -> Bool {
        return person.getAge() >= 18
    }
}

class SeniorFilter: PersonFilter {
    // Implement Senior filter
    // people who are 65 years or older.
    func apply(_ person: Person) -> Bool {
        return person.getAge() >= 65
    }
}

class MarriedFilter: PersonFilter {
    // Implement Married filter
    // people who are married.
    func apply(_ person: Person) -> Bool {
        return person.isMarried()
    }
}

// Context
class PeopleCounter {
    private var filter: PersonFilter? = nil

    func setFilter(_ filter: PersonFilter) {
        self.filter = filter
    }

    func count(_ people: [Person]) -> Int {
        // Implement method here
        // return filtered people
        guard let filter = filter else { return 0}
        
        var total = 0
        
        for person in people {
            if filter.apply(person) {
                total += 1
            }
        }
        return total
    }
}

