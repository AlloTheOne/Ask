//
//  SectionContent1.swift
//  Ask
//
//  Created by Mashael Alghunaim on 09/04/1444 AH.
//


import SwiftUI


struct SectionContent1{
    let image:Image
    let text:String
}

var values1 = [
    SectionContent1(
        image:Image(systemName: "figure.walk"),
        text:"العظام والمفاصل"
    ),
    SectionContent1(
        image:Image(systemName: "list.clipboard.fill"),
        text:"الصحة العامة"
    ),
    SectionContent1(
        image:Image(systemName: "bubbles.and.sparkles.fill"),
        text:"الطب الشعبي "
    ),
    SectionContent1(
        image:Image(systemName: "heart.text.square.fill"),
        text:"أمراض الباطنية "
    ),
    SectionContent1(
        image:Image(systemName: "figure.strengthtraining.functional"),
        text:"العلاج الطبيعي"
    ),
    SectionContent1(
        image:Image(systemName: "lungs.fill"),
        text:"أمراض الجهاز التنفسي"
    ),
    SectionContent1(
        image:Image("Girl"),
        text:"النساء والولادة"
    ),
    SectionContent1(
        image:Image(systemName: "allergens.fill"),
        text:"الجلدية"
    )
]

struct BoxView1: View {
    
    let sectionContent1: SectionContent1
    
    var body: some View {
        NavigationLink(destination: SwiftUIView_Shoug1(sourceLink:self.sectionContent1.text)){
            VStack{
                self.sectionContent1.image.foregroundColor(.white)
                    .padding(5)
                Text(self.sectionContent1.text).foregroundColor(.white)
            }
            .padding()
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                alignment: .center
            )
            .frame(height: 100)
            .background(Color.init(red: 46/255, green: 144/255, blue:183/255))
            .cornerRadius(10)
            .padding(0)
        }
        .navigationBarBackButtonHidden(false)
    }
}


struct SwiftUIView2Shoug1: View {
    var body: some View {
            VStack (spacing: 40) {
                Text("مرحبًا بك في اسأل\r\nماهو نوع سؤالك")
                    .multilineTextAlignment(.center).lineSpacing(22)
                
                VStack(spacing: 7){
                    ForEach(
                        0 ..< Int(
                            ceil(
                                Double(values1.count)/2.0
                            )
                        ),
                        id: \.self
                    ) { i in
                        HStack(spacing: 7) {
                            BoxView1(sectionContent1: values1[i*2])
                            if(i*2+1 < values1.count){
                                BoxView1(sectionContent1: values1[i*2+1])
                            }
                        }
                    }
                }.padding(14)
//                    .statusBarHidden(true)
//                    .onAppear()
//                    .navigationBarBackButtonHidden(true)
//                    .navigationBarBackButtonHidden(false)
//                    .onDisappear()
//                    .navigationBarBackButtonHidden(true)
                
                   
                    
                
            }
    }
}




struct SwiftUIView2Shoug1_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2Shoug1()
        
    }
}
