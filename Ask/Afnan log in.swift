//
//  Afnan log in.swift
//  Ask
//
//  Created by Afnan Alshrif on 02/04/1444 AH.
//

import SwiftUI

struct Afnan_log_in: View {
    @State private var email = "mashael@gmail.com"
    @State private var password = "0000"
    @State private var wrongEmail = 0
    @State private var wrongPassword = 0
    @State private var isPresentedFullScreenCover = false
    
    var body: some View {
        NavigationView {
            
            
            VStack {
                Text("مرحبًا مجددًا !")
                    .font(.largeTitle)
                Text("تسجيل دخول ")
                    .font(.largeTitle)
                TextField("عنوان البريد الإلكتروني " , text: $email)
                    .multilineTextAlignment(.trailing)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongEmail))
                
                SecureField(" كلمة المرور " , text: $password)
                    .multilineTextAlignment(.trailing)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongPassword))
                
                NavigationLink(destination: tabView()){
                
                Button("تسجيل الدخول ") {
                    isPresentedFullScreenCover = true
                }
                .foregroundColor(.white)
                .bold()
                .frame(width: 300, height: 50)
                .background(Color("lightBlue"))
                .cornerRadius(10)
                }
//                NavigationLink(destination: Text("you are logged in @\(email)"), isActive: $showingLoginScreen) {
//                    EmptyView()
//                }
                Button( " نسيت كلمة المرور؟") {
                    
                }.padding([.top, .bottom])
                HStack {
                    NavigationLink(destination: sign_up() ){
                        Text("إنشاء حساب")
                        Button("") {
                        //isPresentedFullScreenCover = true
                        
                            //
                        }
                    }
                    Text("ليس لديك حساب؟")
                        .multilineTextAlignment(.trailing)
                        .padding(2)
                }
                NavigationLink(destination:
                                    tabView() ){
                    Text(" الدخول كزائر") 
                        //isPresentedFullScreenCover = true
                    
                }
                                    .fullScreenCover(isPresented: $isPresentedFullScreenCover){
                                        tabView()
                                    }
            }
        }.navigationBarBackButtonHidden(true)
            
        }
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                Afnan_log_in()
            }
        }
    }
