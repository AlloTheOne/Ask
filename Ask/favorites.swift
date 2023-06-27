//
//  favorites.swift
//  Ask
//
//  Created by Mashael Alghunaim on 08/04/1444 AH.
//

import SwiftUI

struct favorites: View {
let posts: [Post] = [
        Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 4, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
        Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
        Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
        Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة")
    ]
    
    var body: some View {
        
        
        
        ZStack{
            FeedView(posts: posts)
        }
    }
    
    
    // feed view
    struct FeedView: View {
        let posts: [Post]
        
        var body: some View{
            NavigationView{
                List(posts) { post in
                    PostView(post: post)
                }
                .listStyle(PlainListStyle())
                .navigationBarTitle("المفضلة", displayMode: .inline)
            }
        }
    }
    
    struct PostView: View {
        let post: Post
        var body: some View {
            VStack(alignment: .trailing){
                
                HStack(alignment: .top){
                    
                    Text(post.authorName)
                    //   .bold()
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
                    PostActionViews(post: post)
                        .foregroundColor(.gray)
                        .padding(.trailing, 30)
                }
                
            }
        }
    }
    
    struct PostActionViews: View {
        @State private var faved = true
        @State private var liked = true
        let post: Post
        var body: some View {
            HStack {
                
                Button(action: {}){
                    Image(systemName: "square.and.arrow.up")
                }
                .padding(.leading)
                Spacer()
                
                
                
                heartButton(faved: $faved)
                Spacer()
                
                Text(post.numberOfLikes > 0 ? "\(post.numberOfLikes)" : "")
                thumButton(liked: $liked)
                
                
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
        
    struct heartButton: View{
        @Binding var faved: Bool
        var body: some View{
            Button(action: {self.faved.toggle()}, label: {
                if !faved {
                    Image(systemName: "heart")
                }else if faved {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                }
            })
            
        }
    }
    
    struct thumButton: View{
        @Binding var liked: Bool
        
        var body: some View{
            
            Button(action: {self.liked.toggle()}, label: {
                if !liked {
                    Image(systemName: "hand.thumbsup")
                }else if liked {
                    Image(systemName: "hand.thumbsup.fill")
                        .foregroundColor(Color("darkBlue"))
                    
                }
            })
            
        }
    }
    
}





//---------------------------------------------





struct Favorites_Previews: PreviewProvider {
    static var previews: some View {
        favorites()
    }
}


