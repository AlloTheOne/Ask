//
//  questionanswered.swift
//  Ask
//
//  Created by Mashael Alghunaim on 08/04/1444 AH.
//

import SwiftUI

struct questionanswered: View {
    var body: some View {
        
        NavigationView{
            
            
            VStack{
                
                
          
                    Image(systemName: "bell.fill")
                
                    .padding(.leading, -155.0)
                    .padding(.top, 50.0)
                    .padding()
                HStack {
                    
                    
                    VStack(alignment: .leading){
                        
                        HStack{
                            Spacer()
                            Text("منيرة")
                                .foregroundColor(Color("darkBlue"))
                            
                            
                            Image("Image")
                                .resizable()
                                .frame(width: 50,height: 50)
                            
                            
                        }
                        
                        
                        Text("هل  الإكثار من شرب الماء له أضرار صحية؟")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.trailing)
                        
                        
                        Text("٢٢ / ١٠ / ١٤٤٤هـ")
                            .font(.callout)
                            .foregroundColor(Color("lightGray"))
                            .padding(.top, -2.0)
                        
                    }
                    
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                .border(Color("lightGray"), width: 0.5)
                
                
                
                VStack{
                    
                    HStack{
                        Spacer()
                        Text("منيرة")
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color("darkBlue"))
                            .fontWeight(.bold)
                        Text("الرد على")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                    .padding([.top, .leading, .bottom], 3.0)
                    
                    
                    Text("من شأن الإكثار من شرب الماء أن يؤدي إلى ارتفاع في ضغط الدم لدى الإنسان إلى جانب انخفاض نبضات القلب. و تؤثر كثرة شرب الماء على مادة الصوديوم التي يعتمد عليها الجسم من أجل ضبط توازن السوائل داخل الخلايا و خارجه.")
                    
                        .multilineTextAlignment(.trailing)
                    
                    
                    HStack{
                        
                        Text("٢٢ / ١٠ / ١٤٤٤هـ")
                            .font(.callout)
                            .foregroundColor(Color.gray)
                        Spacer()
                        Text("د. مشاعل صالح")
                            .foregroundColor(Color("darkBlue"))
                            
                        
                        
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 35,height: 35)
                            .foregroundColor(Color.gray)
                        
                        
                        
                    }
                    .padding(.top,60)
                    
                    
                }
                .padding()
                Spacer()
                    
                
            }
            
            
            
        }
        
    }
}

struct Aljwhra1_Previews: PreviewProvider {
    static var previews: some View {
        questionanswered()
    }
}
