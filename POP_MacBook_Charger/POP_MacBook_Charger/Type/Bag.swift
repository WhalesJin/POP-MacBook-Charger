//
//  Bag.swift
//  POP_MacBook_Charger
//
//  Created by Whales on 2023/07/15.
//

struct Bag {
    private var items: [Portable] = []
    
    mutating func put(item: Portable) {
        items.append(item)
    }
    
    func openBag() -> [Portable] {
        return items
    }
}
