//
//  ObserverPattern.swift
//  CompSciFund
//
//  Created by Madison Adams on 3/18/26.
//

// Observer


// interface
protocol Observer: AnyObject {
    func notify(_ itemName: String)
}

// concrete observer
class Customer: Observer {
    private let name: String
    private var notifications: Int = 0

    init(_ name: String) {
        self.name = name
    }

    func notify(_ itemName: String) {
        notifications += 1
    }

    func countNotifications() -> Int { return notifications }
}

// concrete subject
class OnlineStoreItem {
    private let itemName: String
    private var stock: Int
    // store observers
    private var observers: [Observer] = []

    init(_ itemName: String, _ stock: Int) {
        self.itemName = itemName
        self.stock = stock
    }

    func subscribe(_ observer: Observer) {
        // push
        self.observers.append(observer)
        
    }

    func unsubscribe(_ observer: Observer) {
        //remove observer
        self.observers.removeAll { $0 === observer }
        
    }

    func updateStock(_ newStock: Int) {
        let oldStock = stock
        stock = newStock
        
        if oldStock == 0 && newStock > 0 {
            // notify
            notifyObservers()
        }
        
    }
    
    private func notifyObservers() {
        for observer in observers {
            observer.notify(itemName)
        }
    }
}

