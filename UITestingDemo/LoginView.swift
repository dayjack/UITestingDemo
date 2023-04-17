//
//  LoginView.swift
//  UITestingDemo
//
//  Created by ChoiYujin on 2023/04/17.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject private var user: User
    @Environment(\.presentationMode) var presentationMode
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            NavigationView {
                Form {
                    Section {
                        TextField("Username", text: $user.username)
                        SecureField("Password", text: $user.password)
                    }
                    
                    Button {
                        if user.login() {
                            presentationMode.wrappedValue.dismiss()
                        } else {
                            showAlert = true
                        }
                    } label: {
                        Text("Login")
                    }
                    .accessibilityIdentifier("loginNow")
                }
                .navigationTitle(Text("Login"))
                .navigationBarItems(trailing: Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark.circle")
                        .accessibilityLabel("Dismiss")
                })
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Login Failed"),
                      message: Text("Either username or password is missing, or they are wrong."),
                      dismissButton: Alert.Button.default(Text("OK"), action: {
                    showAlert = false
                }))
            }
            
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
