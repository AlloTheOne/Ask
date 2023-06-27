//
//  userQuestions.swift
//  Ask
//
//  Created by Mashael Alghunaim on 09/04/1444 AH.
//


import SwiftUI

struct userQuestions: View {
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color("mediumBlue"))
        UISegmentedControl.appearance().setTitleTextAttributes(
                    [
                        .foregroundColor: UIColor.white
                    ], for: .selected)
        
//        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color("lightGray"))]
        }
    let postss1: [Post] = [
           Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 4, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
           Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
           Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
           Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة")
       ]
    
    let postss2: [Post] = [
           Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: " ", numberOfLikes: 4, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
           Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: " ", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
           Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: " ", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
           Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: " ", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة")
       ]
    
        
    @State var searchText = ""
    @State var scrollViewContentSize: CGSize = .zero
    @State private var unansw = false
    @State private var answ = false
    @State private var tabSelection = 1
    var body: some View {
        
            VStack{
                Spacer()
                Text(searchText).searchable(text: $searchText, prompt: "البحث")
                Divider()
                
                Picker("Select an appearence", selection: $tabSelection) {
                    Text("لم يتم الرد").tag(0)
                    Text("تم الرد").tag(1)
                }.pickerStyle(SegmentedPickerStyle()).padding()
                
                
                VStack{
                    if tabSelection == 1 {
                        FeedView2(posts: postss1).frame(minHeight: 550)
                    } else if tabSelection == 0{
                        FeedView2(posts: postss2).frame(minHeight: 550)
                        //clickedOnUn(val: false)
                    } else{
                        FeedView2(posts: postss1).frame(minHeight: 550)
                    }
                }
                
            }
            .navigationBarTitle("جميع أسئلتي", displayMode: .inline)
        
        
        
        
        
    }
    
}

func clickedOnUn(val: Bool){
    
    
}

struct FeedView2: View {
        let posts: [Post]
        
        var body: some View{
            NavigationView{
                List(posts) { post in
                    PostView2(post: post)
                }
                .listStyle(PlainListStyle())
                
            }
        }
    }



struct PostView2: View {
    let post: Post
    var body: some View {
        VStack(alignment: .trailing){
            
            HStack(alignment: .top){
                
                Text(post.authorName)
             
                    .lineLimit(1)
                    .padding(.top, 5)
                
                Image(systemName: "person.crop.circle.fill")
                    .font(.system(size: 30))
                    .padding(.trailing, 5)
                    .foregroundColor(.gray)
                
                
            }
            VStack(alignment: .trailing){
                HStack{
                    
                }
                .padding(.top, 5)
                
                Text(post.title)
                    .font(.title3)
                    .bold()
                    .lineLimit(nil)
                    .padding(.bottom, 5)
                    .multilineTextAlignment(.leading)
                
                Text(post.text)
                    .foregroundColor(.gray)
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                HStack{
                    
                    Text(post.timestampText)
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                        .padding(3)
                    Spacer()
                }
                Divider()
                PostActionViews2(post: post)
                    .foregroundColor(.gray)
                    .padding(.trailing, 30)
            }
            
        }
    }
}

struct PostActionViews2: View {
    @State private var faved2 = false
    @State private var liked2 = false
    let post: Post
    var body: some View {
        HStack {
            
            Button(action: {}){
                Image(systemName: "square.and.arrow.up")
            }
            .padding(.leading)
            Spacer()
            
            
            
            heartButton2(faved2: $faved2)
            Spacer()
            
            Text(post.numberOfLikes > 0 ? "\(post.numberOfLikes)" : "")
            thumButton2(liked2: $liked2)
            
            
            Spacer()
            
            
            
            Text(post.category)
                .foregroundColor(.blue)
                .padding([.top, .bottom],3)
                .padding([.leading, .trailing])
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.blue, lineWidth: 1)
                )
            
        }
    }
}



struct heartButton2: View{
    @Binding var faved2: Bool
    var body: some View{
        Button(action: {self.faved2.toggle()}, label: {
            if !faved2 {
                Image(systemName: "heart")
            }else if faved2 {
                Image(systemName: "heart.fill")

            }
        })

    }
}



struct thumButton2: View{
    @Binding var liked2: Bool

    var body: some View{

        Button(action: {self.liked2.toggle()}, label: {
            if !liked2 {
                Image(systemName: "hand.thumbsup")
            }else if liked2 {
                Image(systemName: "hand.thumbsup.fill")

            }
        })

    }
}




struct allMyQs_Previews: PreviewProvider {
    static var previews: some View {
        userQuestions()
    }
}
