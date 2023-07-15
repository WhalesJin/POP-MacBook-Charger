//
//  MacBook.swift
//  POP_MacBook_Charger
//
//  Created by Whales on 2023/07/15.
//

import Foundation
// 맥북은 각각 다 다르니까 값 타입.
struct MacBook: Portable {
    let permittedChargeWattPerHour: WattPerHour
    var currentBattery: Watt
    let maximumBattery: Watt = 100
    
    mutating func chargeBattery(charger: Chargeable) {
        // 충전기를 활용해 배터리를 완전히 충전한 뒤 충전에 걸린 시간을 print
        let chargeableWattPerHour = Double(charger.convert(chargeableWattPerHour: permittedChargeWattPerHour))
        let needToChargeBattery = Double((maximumBattery - currentBattery))
        let chargeTime = needToChargeBattery / chargeableWattPerHour
        let formattedTime = String(format: "%.2f", chargeTime)
        
        currentBattery = maximumBattery
        print("배터리 충전이 완료되었습니다. 총 충전시간은 \(formattedTime)시간입니다.")
    }
}
