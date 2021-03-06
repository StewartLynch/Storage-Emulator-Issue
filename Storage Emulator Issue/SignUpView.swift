//
//  SignUpView.swift
//  Storage Emulator Issue
//
//  Created by Stewart Lynch on 2021-10-21.
//

import SwiftUI

struct SignUpView: View {
    @Environment(\.dismiss) var dismiss
    @State private var vm = signUpViewModel()
    var body: some View {
        VStack {
            TextField("Email Address", text: $vm.email)
            SecureField("Password", text: $vm.password)
            Button {
                vm.createUser { success in
                    if success {
                        dismiss()
                    }
                }
            } label: {
                Text("Create Account")
            }
            Spacer()
        }
        .padding()
        .textFieldStyle(.roundedBorder)
        .autocapitalization(.none)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
