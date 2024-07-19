//
//  NotificationManager.swift
//  Class_UserNotifications
//
//  Created by Julia Morales on 19/07/24.
//

import Foundation
import UserNotifications

class NotificationManager {
    //Singleton instance
    static let instance = NotificationManager()
    
    func requestAuthorization(){
        
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        
        UNUserNotificationCenter.current().requestAuthorization(options: options) { (sucess, error) in
            if let error = error {
                print("Error: \(error)")
            } else {
                print("Authorized!")
            }
        }
    }
}
