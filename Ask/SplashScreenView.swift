//
//  SplashScreenView.swift
//  Ask
//
//  Created by Mashael Alghunaim on 10/04/1444 AH.
//

import SwiftUI
//
//struct SplashScreenView: View {
//    @State private var isActive = false
//    @State private var size = 0.8
//    @State private var opacity = 0.5
//    var body: some View {
//        if isActive {
//            sign_up()
//        }else{
//            VStack{
//                VStack{
//                    Image(systemName: "house.fill").font(.system(size: 80)).foregroundColor(.red)
//                    Text("Epic App 2").foregroundColor(.black.opacity(0.80))
//                }
//                .scaleEffect(size)
//                .opacity(opacity)
//                .onAppear{
//                    withAnimation(.easeIn(duration: 1.2)){
//                        self.size = 0.9
//                        self.opacity = 1.0
//                    }
//                }
//
//            .onAppear{
//                DispatchQueue.main.asyncAfter(deadline: .now()){
//                    self.isActive = true
//                }
//            }
//            }
//        }
//    }
//}
struct SplashScreenView: View {
    @State var signupscreen = true
    var body: some View {
        
        ZStack{
            Group{
                if signupscreen{
                   welcomePage()
                }else{
                    sign_up()
                }
                
                 
                    }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1){ self.signupscreen = false
                }
                
            }
            
            
            
            
            
        }
        
        
        
    }
    
}
struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
