//
//  QuestionDetailView.swift
//  xnote
//
//  Created by yexiucai on 2023/06/27.
//

import SwiftUI


struct QuestionDetailView: View {
    @State private var isExpanded: Bool = false
    var text : String = "問題の詳詳細の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内内容詳細内容します。"
    var body: some View {
        ScrollView{
            
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "questionmark.app")
                    Text("問題")
                        .font(.headline)

                }
                ScrollView(.vertical) {
                    Text(text)
                        .font(.body)
                        .padding()
                        .background(Color.white)
                }
                
                Image("sugaku")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                                        
                HStack{
                    Image(systemName: "note.text")
                    Text("解答")
                        .font(.headline)

                }
                ScrollView(.vertical) {
                    Text(text)
                        .font(.body)
                        .padding()
                        .background(Color.white)
                }
                Image("sugaku")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                HStack{
                    Image(systemName: "note.text")
                    Text("備考")
                        .font(.headline)

                }
                ScrollView(.vertical) {
                    Text("memo for ")
                        .font(.body)
                        .padding()
                        .background(Color.white)
                }
            }
            .padding(10)
        }
        
    }
}

struct QuestionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionDetailView()
    }
}
