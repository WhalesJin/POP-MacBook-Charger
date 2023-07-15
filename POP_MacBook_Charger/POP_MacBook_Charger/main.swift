//
//  main.swift
//  POP_MacBook_Charger
//
//  Created by Whales on 2023/07/15.
//

let appleWatchCharger = Charger(maximumWattPerHour: 5)
let iPhoneCharger = Charger(maximumWattPerHour: 18)
let iPadCharger = Charger(maximumWattPerHour: 30)
let macBookCharger96 = Charger(maximumWattPerHour: 96)
let macBookCharger106 = Charger(maximumWattPerHour: 106)

var whaleMacBook = MacBook(permittedChargeWattPerHour: 75, currentBattery: 20)

whaleMacBook.chargeBattery(charger: iPadCharger)
