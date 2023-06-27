//
//  SwiftUIView Shoug.swift
//  Ask
//
//  Created by Shouq Turki Bin Tuwaym on 05/04/1444 AH.
//

import SwiftUI

struct SwiftUIView_Shoug: View {

    
    @State var givenText: String = ""
    @State var sentMessages: String = ""
    @State var showingPopup = false
    let sourceLink: String

    var body: some View {
        VStack {
            Text("").frame(height: 5)

            Divider()

            Form{
                Section{
                    Text(sentMessages)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .multilineTextAlignment(.trailing)
                }
            }.scrollContentBackground(.hidden)

            Spacer()


            HStack{

                HStack (alignment: .center) {
                    Button(action:{

                        sentMessages +=  givenText + "\r\n"
                        showingPopup = true
                        givenText = ""
                    }){
                        Image(systemName:"arrow.up.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30, alignment: .center)
                            .foregroundColor(.gray)
                    }
                    TextField(
                        "",
                        text: $givenText,
                        axis: .vertical
                    )
                    .background(alignment: .trailing, content: {
                        Text(
                            givenText == "" ? "اكتب سؤالك" : ""
                        )
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.757, green: 0.757, blue: 0.765)/*@END_MENU_TOKEN@*/)
                    }
                    )
                    .lineLimit(6)
                    .multilineTextAlignment(.trailing)

                }
                .padding()
                .background(
                    RoundedRectangle(
                        cornerRadius: 10
                    )
                    .stroke(
                        Color.init(
                            red:230/255,
                            green:230/255,
                            blue: 230/255
                        ),
                        lineWidth:1
                    )
                )
                .background(
                    RoundedRectangle(
                        cornerRadius: 10
                    )
                    .fill(
                        Color.init(
                            red:250/255,
                            green:250/255,
                            blue: 250/255
                        )
                    )
                )
                .offset(x: 0, y: -20)

            } .padding()

        }
        .navigationTitle(self.sourceLink)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Image("Image")
            .resizable().aspectRatio(contentMode: .fit).frame(maxWidth: 50)
            .foregroundColor(.gray)
        )
        .popover(isPresented: $showingPopup) { // 3

            Button(action: {
                showingPopup = false
            }){
                VStack { // 4
                    Image(systemName:"checkmark.seal.fill")
                        .resizable()
                        .frame(width: 108, height: 108, alignment: .center)
                        .foregroundColor(
                            Color.init(
                                red: 46/255,
                                green: 144/255,
                                blue:183/255
                            )
                        )
                    Text("تم الارسال")
                        .font(.system(size: 21.0))
                        .foregroundColor(.black)
                }
            }

        }
    }

}

struct SwiftUIView_Shoug_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView_Shoug(sourceLink:"None")
    }
}

