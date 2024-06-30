import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Image("logo1") // Pastikan untuk menambahkan gambar logo ke Assets.xcassets
                .resizable()
                .scaledToFit()
                .frame(height: 150)

            Text("Selamat datang")
                .font(.title)
                .fontWeight(.medium)
                .padding(.top, 20)
            
            Text("Belanja dengan percaya diri, karena kami menawarkan berbagai metode pembayaran yang aman dan terjamin.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
                .padding(.top, 10)
            
            NavigationLink(destination: LoginView()) {
                Text("Masuk")
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
                    .cornerRadius(25)
                    .padding(.horizontal, 40)
            }
            .padding(.bottom, 10)
            
            NavigationLink(destination: RegisterView()) {
                Text("Registrasi")
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(25)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.black, lineWidth: 1)
                    )
                    .padding(.horizontal, 40)
            }
            .padding(.bottom, 40)
        }
        .background(Color.white)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
