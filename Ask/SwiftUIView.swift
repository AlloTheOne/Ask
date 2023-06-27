//
//  SwiftUIView.swift
//  Ask
//
//  Created by Mashael Alghunaim on 01/04/1444 AH.
//
import SwiftUI

struct SwiftUIView: View {
    @State var action: Int? = 0
    @State var searchText = ""
    @State private var didTap: Bool = false
    var body: some View {
        NavigationView {
        
            VStack{
                HStack{
                    NavigationLink(destination: questionanswered()){
                    Image(systemName: "bell.badge").foregroundColor(.red)
                    Spacer()
                }
                    VStack{
                        Text("منيرة").fontWeight(.bold).font(.system(size: 25))
                        Text("صباح الخير")
                            .foregroundColor(Color("darkBlue")).font(.system(size: 15))
                    }
                    Image("Image").resizable().scaledToFit().frame(width: 50, height: 50)
                }
                .padding()
                Spacer()
                ScrollView{
                    VStack{
                        
                        Text("الأكثر إعجابًا").fontWeight(.semibold).frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.trailing)
                    VStack(){
                        Text(searchText).searchable(text: $searchText, prompt: "البحث")
                        ZStack{
                            RoundedRectangle(cornerRadius: 25).foregroundColor(Color("veryLightGray")).frame(height: 150) .padding()
                            VStack(alignment: .leading, spacing: 10){
                                HStack(){
                                    Text("د.أفنان محمد").frame(maxWidth: .infinity, alignment: .trailing)
                                    
                                    Image(systemName: "person.circle").foregroundColor(Color("darkGray"))
                                }
                                
                                VStack(spacing: 5){
                                    Text("كيفية خفض ضغط الدم؟").fontWeight(.bold).frame(maxWidth: .infinity, alignment: .trailing)
                                    Text("هناك عدة طرق لخفض الدم منها: ممارسة الرياضة بانتظام، تناول الأطعمة الغنية بالكالسيوم..")
                                        .frame(maxWidth: .infinity).multilineTextAlignment( .trailing)
                                }
                                
                            }
                            .padding(.all)
                            .padding(.all)
                            .padding(.bottom, 30)
                        }
                        
                        Spacer()
                        VStack(){
                            HStack(alignment: .center, spacing: 3){
                                Rectangle().fill(Color("lightGray")).frame(width: 5, height: 5).clipShape(Circle())
                                Rectangle().fill(Color("lightGray")).frame(width: 5, height: 5).clipShape(Circle())
                                Rectangle().fill(Color("lightGray")).frame(width: 5, height: 5).clipShape(Circle())
                                Rectangle().fill(Color("lightGray")).frame(width: 5, height: 5).clipShape(Circle())
                            }
                            
                            Spacer()
                            Text("الخدمات").frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        .padding()
                    }
                    
                    VStack(alignment: .trailing){
                        NavigationLink(destination: homePage()){
                            
                            Text("آخر المنشورات")
                            //                            Button("آخر المنشورات"){
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .trailing).padding()
                                .frame(width: 300, height: 40)
                                .frame(width: 350, height: 60)
                                .background(didTap ? Color("darkBlue") : Color("mediumBlue"))
                                .mask(RoundedRectangle(cornerRadius: 25, style: .continuous)).frame(maxWidth: .infinity, alignment: .trailing).padding(.trailing)
                        }
                        
                        
                        NavigationLink(destination: SwiftUIView2Shoug1()){
                            Text("اسأل سؤالك")
                            //                            Button("اسأل سؤالك"){
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .trailing).padding()
                                .frame(width: 300, height: 40)
                                .frame(width: 350, height: 60)
                                .background(Color("mediumBlue"))
                                .mask(RoundedRectangle(cornerRadius: 25, style: .continuous)).frame(maxWidth: .infinity, alignment: .trailing).padding(.trailing)
                        }
                        
                        
                        
                        NavigationLink(destination: userQuestions()){
                            Text("جميع أسئلتي")
                            //                        Button("جميع أسئلتي"){
                            //
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .trailing).padding()
                                .foregroundColor(.white)
                                .frame(width: 300, height: 40)
                                .frame(width: 350, height: 60)
                                .background(Color("mediumBlue"))
                                .mask(RoundedRectangle(cornerRadius: 25, style: .continuous)).frame(maxWidth: .infinity, alignment: .trailing).padding(.trailing)
                        }
                        
                    }
                }
                    
                    
                    
                }
                //                    VStack(alignment: .trailing, spacing: -10){
                //
                //                            RoundedRectangle(cornerRadius: 25).fill(Color("darkBlue")).frame( height: 75).overlay(HStack(){
                //                                Text("آخر المنشورات").foregroundColor(.white).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .trailing).padding()
                //
                //
                //                            })
                //
                //                            .padding(.all)
                //                            RoundedRectangle(cornerRadius: 25).fill(Color("mediumBlue")).frame( height: 75).overlay(HStack{
                //                                Text("اسأل سؤالك").foregroundColor(.white).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .trailing).padding()
                //
                //                            })
                //                            .padding(.all)
                //                            RoundedRectangle(cornerRadius: 25).fill(Color("mediumBlue")).frame( height: 75).overlay(HStack{
                //                                Text("جميع أسئلتي").foregroundColor(.white).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .trailing)
                //                                    .padding()
                //
                //                            })
                //                            .padding(.all)
                //
                //                        }
                
                
        }//.navigationViewStyle(.stack)
            .navigationBarBackButtonHidden(true)
        }
        
    }
    
    
    
    

    
    
    
    struct SwifUIView_Previews: PreviewProvider {
        static var previews: some View {
            SwiftUIView()
            //tabView()
            
        }
    }

