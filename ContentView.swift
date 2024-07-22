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
            ButtonComponent(label: "Solicitar Autorização", function: {
                NotificationManager.object.requestAuthorization()
            })
            ButtonComponent(label: "Agendar Notificação", function: {
                NotificationManager.object.scheduleNotification()
            })
        }
    }
}

struct ButtonComponent: View {
    var label: String
    var function: () -> Void
    
    var body: some View {
        Button(action: function, label: {
            RoundedRectangle(cornerRadius: 10)
                .fill(.black)
                .frame(width: 250, height: 50)
                .overlay(Text(label))
                .foregroundStyle(.white)
                .bold()
                .font(.title3)
        })
    }
}


#Preview {
    ContentView()
}
