//
//  LoginView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {
            GeometryReader { proxy in
                VStack(spacing: 70) {
                    Spacer()
                    Image("Facebook_Circle")
                        .resizable()
                        .scaledToFill()
                        .frame (width: 70, height: 70)
    
                    VStack (spacing: 24) {
                        TextField("Mobile number or email address", text: $viewModel.email)
                            .textInputAutocapitalization(.never)
                            .customTextFieldViewModifier (width: proxy.size.width)
                        TextField( "Password", text: $viewModel.password)
                            .customTextFieldViewModifier (width: proxy.size.width)
        
                        Button {
                        } label: {
                            Text ("Log In" )
                                .font (.headline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                                .frame(width: proxy.size.width - 30, height: 44)
                                .background(.blue)
                                .clipShape (RoundedRectangle(cornerRadius: 30))
                        }
                        Text("Forgotten Password?")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        }
                        HStack { Spacer() }
                        Spacer()
                        VStack(spacing: 24) {
                            
                            Button {
                            } label: {
                                Text ("Create new account")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .frame (width: proxy.size.width - 30, height: 44)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(.blue, lineWidth: 1)
                                    }
                            }
                            
                            HStack(spacing: 5) {
                                Image ("meta" )
                                    .resizable()
                                    .scaledToFill()
                                    .frame (width: 16,
                                            height: 16)
                                Text ("Meta" )
                                    .font(.subheadline)
                                    .fontWeight (.semibold)
                            }
                            .foregroundStyle(Color(.darkGray))
                        }
                }
                .background (Color (.systemGray5))
            }
        }
    }
}

#Preview {
    LoginView()
}
