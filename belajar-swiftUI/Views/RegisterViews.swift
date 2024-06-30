import SwiftUI

struct RegisterViews: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Masukkan email anda", text: $email)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
            
            SecureField("Masukkan kata sandi anda", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 20)
            
            SecureField("Konfirmasi kata sandi anda", text: $confirmPassword)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 20)
            
            Button(action: {
                // Handle the registration action
            }) {
                Text("Selanjutnya")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
            }
            
            Spacer()
            
            HStack {
                Text("Sudah punya akun?")
                Button(action: {
                    // Handle the login action
                }) {
                    NavigationLink(destination: LoginView()) {
                        Text("Masuk")
                            .foregroundColor(.yellow)
                    }
                }
            }
            .padding(.bottom, 20)
        }
        .navigationBarTitle("Registrasi", displayMode: .inline)
        .padding(.top, 40)
    }
}


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterViews()
    }
}
