//
//  ContentView.swift
//  Class_UserNotifications
//
//  Created by Julia Morales on 19/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Button {
                //notificacao
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(width: 250, height: 50)
                    .overlay(Text("Lançar Notificação"))
                        .foregroundStyle(.black)
                        .font(.title2)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
