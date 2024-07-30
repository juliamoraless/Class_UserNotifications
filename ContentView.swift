//
//  ContentView.swift
//  Class_UserNotifications
//
//  Created by Julia Morales on 19/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Notificações")
                .font(.largeTitle)
//            Button("") {
//                NotificationManager.object.requestAuthorization()
//            }
//            .buttonStyle(ButtonStyleJulia(label: "Solicitar autorizacao "))
            ButtonComponent(text: "Solicitar Autorização", action: {
                NotificationManager.checkAuthorization()
            })
            ButtonComponent(text: "Agendar Notificação", action: {
                NotificationManager.checkAuthorization()
                NotificationManager.scheduleNotification()
            })
        }
    }
}

struct ButtonComponent: View {
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            RoundedRectangle(cornerRadius: 10)
                .fill(.black)
                .frame(width: 250, height: 50)
                .overlay(Text(text))
                .foregroundStyle(.white)
                .bold()
                .font(.title3)
        })
    }
}
//struct ButtonStyleJulia: ButtonStyle {
//    var label: String
//    
//    func makeBody(configuration: Configuration) -> some View {
//        RoundedRectangle(cornerRadius: 10)
//            .fill(.black)
//            .frame(width: 250, height: 50)
//            .overlay(Text(label))
//            .foregroundStyle(.white)
//            .bold()
//            .font(.title3)
//    }
//}

#Preview {
    ContentView()
}
