//
//  MenuView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct MenuView: View {
    @State private var showLogOutAlert = false
    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                ScrollView {
                    VStack(alignment: .leading) {
                        MenuHeaderView()
                        ShortCutsView(width: proxy.size.width)
                        MenuCell(title: "Help & Support", name: "questionmark.circle.fill")
                        MenuCell(title: "Setting & Privacy", name: "gearshape.fill")
                        MenuCell(title: "Also from Meta", name: "window.casement.closed")
                        Button {
                            showLogOutAlert.toggle()
                        } label: {
                            Text("Log Out")
                                .customButtonModifier(width: proxy.size.width)
                                .padding()
                        }
                    }
                }
                .alert("Log out of your account?",
                       isPresented: $showLogOutAlert) {
                    Button("Logout") { }
                    Button("Cancel", role: .cancel) { }
                }
                .background(Color(.systemGray6))
                .scrollIndicators(.hidden)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Text("Menu")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        HStack(spacing: 24) {
                            Image(systemName: "gearshape.fill")
                            Image(systemName: "magnifyingglass")
                        }
                        .fontWeight(.bold)
                    }
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
