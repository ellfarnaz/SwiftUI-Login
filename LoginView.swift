import SwiftUI

struct LoginView: View {
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                fromView()
                HStack {
                    Image("key")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 20)
                    SecureField("Masukkan kata sandi anda", text: $password)
                        .padding(.horizontal)
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(30)
                .padding(.horizontal)
                
                Button(action: {
                    // Handle login action
                }) {
                    Text("Masuk")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.yellow)
                        .foregroundColor(.black)
                        .cornerRadius(30)
                        .padding(.horizontal)
                        .padding(.top, 50)
                }
                
                HStack {
                    Text("Belum punya akun?")
                    NavigationLink(destination: RegisterView()) {
                        Text("Registrasi")
                            .foregroundColor(.yellow)
                    }
                }
                
                Spacer()
            }
            .padding(.top, 100)
            .navigationTitle("Login") // This sets the title for the LoginView
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct fromView: View {
    @State private var email: String = ""
    
    var body: some View {
        HStack {
            Image("email")
                .resizable()
                .scaledToFit()
                .frame(height: 20)
            TextField("Masukkan email anda", text: $email)
                .padding(.horizontal)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(30)
        .padding(.horizontal)
        .padding(.vertical)
    }
}

struct RegisterView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Image("email")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                TextField("Masukkan email anda", text: $email)
                    .padding(.horizontal)
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(30)
            .padding(.horizontal)
            .padding(.vertical)
            
            HStack {
                Image("key")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                SecureField("Masukkan kata sandi anda", text: $password)
                    .padding(.horizontal)
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(30)
            .padding(.horizontal)
            
            Button(action: {
                // Handle register action
            }) {
                Text("Daftar")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .foregroundColor(.black)
                    .cornerRadius(30)
                    .padding(.horizontal)
                    .padding(.top, 50)
            }
            
            Spacer()
        }
        .padding(.top, 100)
        .navigationTitle("Register") // This sets the title for the RegisterView
    }
}
