//
//  sign up.swift
//  Ask
//
//  Created by Afnan Alshrif on 05/04/1444 AH.
//

import SwiftUI

struct sign_up: View {
    @State private var email = "mashael@gmail.com"
    @State private var password = "12345"
    @State private var wrongEmail = 0
    @State private var wrongPassword = 0
    @State private var fullName = "Mashaell.g"
    @State private var wrongFullName = 0
    @State private var showingLoginScreen = false
    @State private var rewritePassword = "12345"
    @State private var isPresentedFullScreenCover = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                
                
                Text("إنشاء حساب ")
                    .font(.largeTitle)
                    .padding()
                
                
                TextField("الاسم الكامل " , text: $fullName)
                    .multilineTextAlignment(.trailing)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongFullName))
                TextField("عنوان البريد الإلكتروني  " , text: $email)
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
                SecureField(" إعادة كتابة كلمة المرور" , text: $rewritePassword)
                    .multilineTextAlignment(.trailing)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongPassword))
            
            
                NavigationLink(destination: tabView()){
                    
             
                Text("إنشاء حساب  ")
//                    isPresentedFullScreenCover = true
                
                }
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .background(Color("lightBlue"))
                .cornerRadius(10)
                //                NavigationLink(destination: Text("you are logged in @\(email)"), isActive: $showingLoginScreen) {
                //                    EmptyView()
                //                }
//                .fullScreenCover(isPresented: $isPresentedFullScreenCover){
//                    SwiftUIView()
//        }
               
//                NavigationLink(destination: sign_up() ){
//                    Text("إنشاء حساب")
//                    Button("") {
//                    isPresentedFullScreenCover = true
//
//                        //
//                    }
//                }
       
                HStack{
                    NavigationLink(destination:
                                    Afnan_log_in()){
                        Text("تسجيل الدخول ")
                        Button("") {
                            //isPresentedFullScreenCover = true
                            // Text("sign in")
                        }
                    }
                    
                    Text("لديك حساب؟")
                        
                } .padding()
                NavigationLink(destination:
                                    homePage() ){
                    
                    Text(" الدخول كزائر")
                        
                    
                }
            }
            NavigationLink(destination: EmptyView()){
                EmptyView()
            }
        }.navigationBarBackButtonHidden(true)
    }
    
}

struct sign_up_Previews: PreviewProvider {
    static var previews: some View {
        sign_up()
    }
}
