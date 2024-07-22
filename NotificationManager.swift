//
//  NotificationManager.swift
//  Class_UserNotifications
//
//  Created by Julia Morales on 19/07/24.
//

import Foundation
import UserNotifications

class NotificationManager {
    static let object = NotificationManager()
    
    private init() { }
    
    func requestAuthorization() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (sucess, error) in
            if let error = error {
                print("Error: \(error)")
            } else {
                print("Authorized!")
            }
        }
    }
    
    func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Primeira notificação!"
        content.subtitle = "Sua primeira notificação foi criada"
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request)
    }
}
