//
//  NotificationManager.swift
//  Class_UserNotifications
//
//  Created by Julia Morales on 19/07/24.
//

import Foundation
import UserNotifications

class NotificationManager {
//    static let object = NotificationManager()
//    
//    private init() { }
    
    static func requestAuthorization() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { success, error in
            if let error = error {
                print("Error: \(error)")
            } else {
                print("Authorized!")
            }
        }
    }
    
    static func checkAuthorization() {
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            switch settings.authorizationStatus {
            case .authorized:
                print("Permissão concedida")
            case .denied:
                print("Permissão negada, autorize nos ajustes")
            case .notDetermined:
                self.requestAuthorization()
            default:
                print("")
            }
        }
    }
    
     static func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Primeira notificação!"
        content.subtitle = "Sua primeira notificação foi criada"
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request)
    }
}






