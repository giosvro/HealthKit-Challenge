//
//  HealthManager.swift
//  HealthKit-Challenge
//
//  Created by Giovanni Severo on 22/09/23.
//

import HealthKit

final class HealthManager {
    
    static var shared: HealthManager = HealthManager()
    var store: HKHealthStore?
    
    private init() {
        if HKHealthStore.isHealthDataAvailable() {
            // Plataform is compatible with HealthKit
            self.store = HKHealthStore()
        } else {
            // Handle plataforms that are not compatible with HealthKit
        }
    }
    
    /// Only what you need. When you need it. Every time
    public func requestAuthorization() {
        let shareTypes = self.getAuthorizationShareTypes()
        self.store?.requestAuthorization(toShare: shareTypes, read: nil) { response, error in
            if response {
                
            } else {
                
            }
        }
    }
    
    public func getAuthorizationShareTypes() -> Set<HKSampleType> {
        var shareTypes = Set<HKSampleType>()
        
        if let distanceType = HKQuantityType.quantityType(forIdentifier: .distanceWalkingRunning) {
            shareTypes.insert(distanceType)
        }
        
        return shareTypes
    }
}
