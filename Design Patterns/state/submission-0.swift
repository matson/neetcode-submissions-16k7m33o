//
//  Untitled.swift
//  CompSciFund
//
//  Created by Madison Adams on 3/18/26.
//

// State Pattern

// interface
protocol State {
    func handleRequest(_ doc: Document)
}

// context
class Document {
    private var state: State = Draft()
    private var approved: Bool = false

    func getState() -> State { return state }

    func setState(_ state: State) {
        self.state = state
    }

    func publish() {
        state.handleRequest(self)
    }

    func setApproval(_ isApproved: Bool) {
        self.approved = isApproved
    }

    func isApproved() -> Bool { return approved }
}

// red, yellow, green
class Draft: State {
    func handleRequest(_ doc: Document) {
        // goes to review
        doc.setState(Review())
    }
}

class Review: State {
    func handleRequest(_ doc: Document) {
        // goes to published
        // either approved for published state
        if doc.isApproved() {
            doc.setState(Published())
        }
        else{
            doc.setState(Draft())
        }
    }
}

class Published: State {
    func handleRequest(_ doc: Document) {
        
    }
}

